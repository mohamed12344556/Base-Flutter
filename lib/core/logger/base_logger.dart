import 'dart:convert';
import 'dart:developer' as developer;
import 'dart:math' as math;
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';

// ---------------------------------------------------------------------------
// ANSI palette
// ---------------------------------------------------------------------------

abstract class _A {
  static const rs = '\x1b[0m';
  static const bold = '\x1b[1m';
  static const dim = '\x1b[2m';

  static const req = '\x1b[38;5;39m'; // cyan-blue  -> REQUEST
  static const res = '\x1b[38;5;78m'; // soft green -> RESPONSE OK
  static const err = '\x1b[38;5;196m'; // red        -> ERROR
  static const warn = '\x1b[38;5;214m'; // amber      -> RESPONSE 4xx
  static const dbg = '\x1b[38;5;110m'; // slate      -> DEBUG
  static const trc = '\x1b[38;5;244m'; // gray       -> TRACE

  static const lbl = '\x1b[38;5;222m'; // golden     -> field labels
  static const val = '\x1b[38;5;253m'; // off-white  -> values
  static const link = '\x1b[38;5;117m'; // light blue -> URLs
  static const sep = '\x1b[38;5;238m'; // dark gray  -> separators
  static const hdr = '\x1b[38;5;183m'; // lavender   -> header keys

  static const jk = '\x1b[38;5;81m'; // sky blue   -> JSON key
  static const js = '\x1b[38;5;121m'; // pale green -> JSON string
  static const jn = '\x1b[38;5;214m'; // amber      -> JSON number/bool
  static const jz = '\x1b[38;5;240m'; // gray       -> JSON null
}

// ---------------------------------------------------------------------------
// BaseLogger -- rounded for REQUEST/RESPONSE, double border for ERROR
// ---------------------------------------------------------------------------

class BaseLogger {
  BaseLogger._();

  static const _startKey = '_base_us';
  static const _W = 82;
  static const _maxBodyLines = 999999;
  static const _maxStackLines = 5;

  static const _sensitiveKeys = {
    'authorization',
    'x-api-token',
    'token',
    'access-token',
    'refresh-token',
    'cookie',
    'set-cookie',
  };

  static bool _enabled = kDebugMode;

  static bool get isEnabled => _enabled;
  static void configure({required bool enabled}) => _enabled = enabled;

  // -- Plain logs ------------------------------------------------------------

  static void t(dynamic m, {Object? error, StackTrace? stackTrace}) {
    if (!_enabled) return;
    _plain(_A.trc, 'TRC', m, error: error, st: stackTrace);
  }

  static void d(dynamic m, {Object? error, StackTrace? stackTrace}) {
    if (!_enabled) return;
    _plain(_A.dbg, 'DBG', m, error: error, st: stackTrace);
  }

  static void i(dynamic m, {Object? error, StackTrace? stackTrace}) {
    if (!_enabled) return;
    _plain(_A.req, 'INF', m, error: error, st: stackTrace);
  }

  static void w(dynamic m, {Object? error, StackTrace? stackTrace}) {
    if (!_enabled) return;
    _plain(_A.warn, 'WRN', m, error: error, st: stackTrace);
    if (error != null) _reportToCrashlytics(error, stackTrace, m.toString());
  }

  static void e(dynamic m, {Object? error, StackTrace? stackTrace}) {
    if (!_enabled) return;
    _plain(_A.err, 'ERR', m, error: error, st: stackTrace);
    if (error != null) _reportToCrashlytics(error, stackTrace, m.toString());
  }

  static void _reportToCrashlytics(
    Object error,
    StackTrace? stackTrace,
    String reason,
  ) {
    try {
      FirebaseCrashlytics.instance.recordError(
        error,
        stackTrace ?? StackTrace.current,
        reason: reason,
        fatal: false,
        printDetails: false,
      );
    } catch (_) {}
  }

  // ignore: unused_element
  static void _reportToCrashlyticsAlways(
    Object error,
    StackTrace? stackTrace,
    String reason,
  ) {
    _reportToCrashlytics(error, stackTrace, reason);
  }

  static void _plain(
    String c,
    String tag,
    dynamic msg, {
    Object? error,
    StackTrace? st,
  }) {
    _out(
      '$c${_A.dim}[${_time()}]${_A.rs} $c${_A.bold}[$tag]${_A.rs} $c$msg${_A.rs}',
    );
    if (error != null) _out('$c  \u21b3 $error${_A.rs}');
    if (st != null) {
      for (final l in _stackLines(st)) _out('$c    $l${_A.rs}');
    }
    _flush();
  }

  // -- Request ---------------------------------------------------------------

  static void logRequest(RequestOptions options) {
    if (!_enabled) return;
    options.extra[_startKey] = DateTime.now().microsecondsSinceEpoch;

    _render(
      color: _A.req,
      kind: 'REQUEST',
      tag: options.method,
      metrics: [_M('Method', options.method)],
      uri: options.uri.toString(),
      headers: _sanitize(options.headers),
      sections: [
        if (options.queryParameters.isNotEmpty)
          _S('Query', options.queryParameters),
        if (options.data != null) _S('Body', options.data),
      ],
    );
  }

  // -- Response --------------------------------------------------------------

  static void logResponse(Response<dynamic> response) {
    if (!_enabled) return;

    final req = response.requestOptions;
    final dur = _dur(req);
    final code = response.statusCode ?? 0;
    final c = (code >= 200 && code < 300) ? _A.res : _A.warn;

    _render(
      color: c,
      kind: 'RESPONSE',
      tag:
          '${req.method} \u00b7 $code${dur != null ? ' \u00b7 ${dur.inMilliseconds} ms' : ''}',
      metrics: [
        _M('Status', '$code', color: c),
        _M('Method', req.method),
        if (dur != null) _M('Duration', '${dur.inMilliseconds} ms'),
      ],
      uri: response.realUri.toString(),
      sections: [if (response.data != null) _S('Data', response.data)],
    );
  }

  // -- Error -----------------------------------------------------------------

  static void logDioError(
    DioException err, {
    Object? mappedError,
    StackTrace? stackTrace,
  }) {
    if (!_enabled) return;

    final req = err.requestOptions;
    final res = err.response;
    final dur = _dur(req);
    final code = res?.statusCode;
    final msg = mappedError?.toString() ?? err.message;

    _render(
      color: _A.err,
      kind: 'ERROR',
      tag:
          '${req.method}${code != null ? ' \u00b7 $code' : ''}'
          '${dur != null ? ' \u00b7 ${dur.inMilliseconds} ms' : ''}',
      metrics: [
        if (code != null) _M('Status', '$code', color: _A.err),
        _M('Method', req.method),
        if (dur != null) _M('Duration', '${dur.inMilliseconds} ms'),
      ],
      uri: req.uri.toString(),
      headers: _sanitize(req.headers),
      meta: [
        _M('Type', err.type.name),
        if (mappedError != null)
          _M('Mapped', mappedError.runtimeType.toString()),
        if (msg != null && msg.isNotEmpty) _M('Message', msg),
      ],
      sections: [
        if (req.queryParameters.isNotEmpty) _S('Query', req.queryParameters),
        if (req.data != null) _S('ReqBody', req.data),
        if (res?.data != null) _S('ResBody', res!.data),
      ],
      stackTrace: stackTrace ?? err.stackTrace,
    );
  }

  // ---------------------------------------------------------------------------
  // Renderer -- rounded (╭╮╰╯) for REQUEST/RESPONSE, double (╔╗╚╝) for ERROR
  // ---------------------------------------------------------------------------

  static void _render({
    required String color,
    required String kind,
    required String tag,
    required List<_M> metrics,
    required String uri,
    Map<String, dynamic> headers = const {},
    List<_M> meta = const [],
    List<_S> sections = const [],
    StackTrace? stackTrace,
  }) {
    final c = color;
    final isErr = kind == 'ERROR';
    final icon = _icon(kind);

    final tl = isErr ? '\u2554' : '\u256d';
    final tr = isErr ? '\u2557' : '\u256e';
    final bl = isErr ? '\u255a' : '\u2570';
    final br = isErr ? '\u255d' : '\u256f';
    final h = isErr ? '\u2550' : '\u2500';
    final v = isErr ? '\u2551' : '\u2502';
    final sl = isErr ? '\u2560' : '\u251c';
    final sr = isErr ? '\u2563' : '\u2524';

    // top border
    final lVis = 6 + kind.length;
    final fill = h * math.max(2, _W - lVis - 2);
    _out('$c$tl$h $icon ${_A.bold}$kind${_A.rs}$c $fill$h$tr${_A.rs}');

    // metrics row
    _metricsRow(c, metrics, v, v);

    // URL
    _kvRow(c, 'URL', '${_A.link}$uri${_A.rs}', uri.length, v, v);

    // meta (errors only)
    for (final m in meta) {
      _kvRow(
        c,
        m.key,
        '${m.color ?? _A.val}${m.val}${_A.rs}',
        m.val.length,
        v,
        v,
      );
    }

    // headers section
    if (headers.isNotEmpty) {
      _out('$c$sl${h * (_W - 2)}$sr${_A.rs}');
      _sectionTitle(c, '\ud83d\udd27 HEADERS', v, v);
      _headersRows(c, headers, v, v);
    }

    // body sections
    for (final s in sections) {
      final txt = _serialize(s.value);
      if (txt.trim().isEmpty) continue;
      _out('$c$sl${h * (_W - 2)}$sr${_A.rs}');
      _kvRow(c, s.label, '${_A.sep}:${_A.rs}', s.label.length + 1, v, v);
      _bodyLines(c, txt, v, v);
    }

    // stack trace
    if (stackTrace != null) {
      _out('$c$sl${h * (_W - 2)}$sr${_A.rs}');
      _kvRow(c, 'StackTrace', '${_A.sep}:${_A.rs}', 11, v, v);
      _stackRows(c, stackTrace, v, v);
    }

    _out('$c$bl${h * (_W - 1)}$br${_A.rs}');
    _out('');
    _flush();
  }

  // ---------------------------------------------------------------------------
  // Shared row helpers
  // ---------------------------------------------------------------------------

  static void _metricsRow(String c, List<_M> metrics, String vl, String vr) {
    if (metrics.isEmpty) return;
    var vis = 2;
    final buf = StringBuffer('$c$vl${_A.rs} ');
    for (int i = 0; i < metrics.length; i++) {
      final m = metrics[i];
      final mc = m.color ?? _A.val;
      buf.write('${_A.lbl}${m.key.padRight(9)}${_A.rs}$mc${m.val}${_A.rs}');
      vis += 9 + m.val.length;
      if (i < metrics.length - 1) {
        buf.write('  ${_A.sep}\u2502${_A.rs}  ');
        vis += 5;
      }
    }
    final pad = math.max(0, _W - vis - 1);
    buf.write('${' ' * pad}$c$vr${_A.rs}');
    _out(buf.toString());
  }

  static void _kvRow(
    String c,
    String key,
    String coloredVal,
    int valVis,
    String vl,
    String vr,
  ) {
    final vis = 1 + 1 + 9 + 1 + valVis;
    final pad = math.max(0, _W - vis - 1);
    _out(
      '$c$vl${_A.rs} ${_A.lbl}${key.padRight(9)}${_A.rs} $coloredVal${' ' * pad}$c$vr${_A.rs}',
    );
  }

  static void _sectionTitle(String c, String title, String vl, String vr) {
    final vis = title.length + 2;
    final pad = math.max(0, _W - vis - 2);
    _out(
      '$c$vl${_A.rs} ${_A.hdr}${_A.bold}$title${_A.rs}${' ' * pad}$c$vr${_A.rs}',
    );
  }

  static void _headersRows(
    String c,
    Map<String, dynamic> headers,
    String vl,
    String vr,
  ) {
    for (final e in headers.entries) {
      final v = _hval(e.value);
      final key = e.key.padRight(26);
      final vis = 3 + key.length + v.length;
      final pad = math.max(0, _W - vis - 2);
      _out(
        '$c$vl${_A.rs}   ${_A.hdr}$key${_A.rs}${_A.val}$v${_A.rs}${' ' * pad}$c$vr${_A.rs}',
      );
    }
  }

  static void _bodyLines(String c, String txt, String vl, String vr) {
    final all = txt.split('\n');
    final capped = all.length > _maxBodyLines
        ? [
            ...all.take(_maxBodyLines),
            ' \u2026 (${all.length - _maxBodyLines} more lines)',
          ]
        : all;
    for (final line in capped) {
      final colored = _colorJson(line);
      final vis = _vlen(line);
      final pad = math.max(0, _W - vis - 4);
      _out('$c$vl${_A.rs}  $colored${' ' * pad}$c$vr${_A.rs}');
    }
  }

  static void _stackRows(String c, StackTrace st, String vl, String vr) {
    for (final line in _stackLines(st)) {
      final vis = _vlen(line);
      final pad = math.max(0, _W - vis - 4);
      _out('$c$vl${_A.rs}  ${_A.dim}$line${_A.rs}${' ' * pad}$c$vr${_A.rs}');
    }
  }

  // ---------------------------------------------------------------------------
  // JSON syntax colorizer
  // ---------------------------------------------------------------------------

  static String _colorJson(String line) {
    line = line.replaceAllMapped(
      RegExp(r'"([^"]+)"\s*:'),
      (m) => '${_A.jk}"${m[1]}"${_A.rs}${_A.sep}:${_A.rs}',
    );
    line = line.replaceAllMapped(
      RegExp(r'(?<=:\s{0,4})"([^"]*)"'),
      (m) => '${_A.js}"${m[1]}"${_A.rs}',
    );
    line = line.replaceAllMapped(
      RegExp(r'(?<=:\s{0,4})(-?\d+\.?\d*|true|false)\b'),
      (m) => '${_A.jn}${m[0]}${_A.rs}',
    );
    line = line.replaceAllMapped(
      RegExp(r'(?<=:\s{0,4})null\b'),
      (m) => '${_A.jz}null${_A.rs}',
    );
    return line;
  }

  // ---------------------------------------------------------------------------
  // Output buffer -- collect all lines then emit as a single log call
  // ---------------------------------------------------------------------------

  static final List<String> _buf = [];

  static void _out(String line) => _buf.add(line);

  static void _flush() {
    if (_buf.isEmpty) return;
    developer.log(_buf.join('\n'), name: 'base');
    _buf.clear();
  }

  // ---------------------------------------------------------------------------
  // Utilities
  // ---------------------------------------------------------------------------

  static String _icon(String kind) => switch (kind) {
    'REQUEST' => '\ud83d\ude80', // 🚀
    'RESPONSE' => '\u2705', // ✅
    'ERROR' => '\u274c', // ❌
    _ => '\u2022', // •
  };

  static String _hval(Object? v) =>
      v is List ? v.join(', ') : v?.toString() ?? '';

  static String _serialize(Object? v) {
    if (v == null) return '';
    if (v is Uint8List) return 'Uint8List(length: ${v.length})';
    if (v is FormData) {
      return const JsonEncoder.withIndent('  ').convert({
        'fields': {for (final f in v.fields) f.key: f.value},
        'files': [
          for (final f in v.files)
            {'field': f.key, 'filename': f.value.filename},
        ],
      });
    }
    if (v is Map || v is List || v is Iterable) {
      try {
        return const JsonEncoder.withIndent('  ').convert(v);
      } catch (_) {}
    }
    return v.toString();
  }

  static Duration? _dur(RequestOptions req) {
    final s = req.extra[_startKey];
    if (s is! int) return null;
    return Duration(microseconds: DateTime.now().microsecondsSinceEpoch - s);
  }

  static Map<String, dynamic> _sanitize(Map<String, dynamic> h) => {
    for (final e in h.entries)
      e.key: _sensitiveKeys.contains(e.key.toLowerCase())
          ? _mask(e.value)
          : e.value,
  };

  static String _mask(Object? v) {
    final s = v?.toString() ?? '';
    if (s.length <= 8) return '***';
    return '${s.substring(0, 4)}***${s.substring(s.length - 2)}';
  }

  static List<String> _stackLines(StackTrace st) => st
      .toString()
      .split('\n')
      .where((l) => l.trim().isNotEmpty)
      .take(_maxStackLines)
      .toList();

  static int _vlen(String s) =>
      s.replaceAll(RegExp(r'\x1b\[[0-9;]*m'), '').length;

  static String _time() {
    final t = DateTime.now();
    return '${t.hour.toString().padLeft(2, '0')}:'
        '${t.minute.toString().padLeft(2, '0')}:'
        '${t.second.toString().padLeft(2, '0')}';
  }
}

// ---------------------------------------------------------------------------
// Internal models
// ---------------------------------------------------------------------------

class _M {
  const _M(this.key, this.val, {this.color});
  final String key;
  final String val;
  final String? color;
}

class _S {
  const _S(this.label, this.value);
  final String label;
  final Object? value;
}
