import 'package:flutter/material.dart';

import 'package:hydrated_bloc/hydrated_bloc.dart';

class LanguageCubit extends HydratedCubit<Locale> {
  static LanguageCubit? _instance;

  LanguageCubit._() : super(const Locale('en'));

  factory LanguageCubit() {
    _instance ??= LanguageCubit._();

    return _instance!;
  }

  static LanguageCubit get instance {
    _instance ??= LanguageCubit._();

    return _instance!;
  }

  String getCurrentLanguageCode() {
    return state.languageCode;
  }

  final String _jsonKey = "languageCode";

  @override
  Locale? fromJson(Map<String, dynamic> json) {
    final languageCode = json[_jsonKey] as String?;

    if (!['en', 'ar'].contains(languageCode)) {
      return const Locale('en');
    }
    return Locale(languageCode!);
  }

  @override
  Map<String, dynamic>? toJson(Locale state) {
    return {_jsonKey: state.languageCode};
  }

  void changeLanguage(String languageCode) {
    if (!['en', 'ar'].contains(languageCode)) return;
    emit(Locale(languageCode));
  }
}
