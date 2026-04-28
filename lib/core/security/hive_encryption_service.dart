import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive_ce/hive.dart';

abstract interface class HiveEncryptionService {
  Future<HiveAesCipher> getCipher();
}

class HiveEncryptionServiceImpl implements HiveEncryptionService {
  HiveEncryptionServiceImpl() : _secureStorage = const FlutterSecureStorage();

  final FlutterSecureStorage _secureStorage;

  @override
  Future<HiveAesCipher> getCipher() async {
    const keyName = 'hive_aes_key';
    String? encodedKey = await _secureStorage.read(key: keyName);

    Uint8List key;
    if (encodedKey == null) {
      key = Uint8List.fromList(
        List.generate(32, (_) => Random.secure().nextInt(256)),
      );
      encodedKey = base64Encode(key);
      try {
        await _secureStorage.write(key: keyName, value: encodedKey);
      } catch (_) {
        key = Uint8List.fromList(
          List.generate(32, (_) => Random.secure().nextInt(256)),
        );
      }
    } else {
      key = base64Decode(encodedKey);
    }

    return HiveAesCipher(key);
  }
}
