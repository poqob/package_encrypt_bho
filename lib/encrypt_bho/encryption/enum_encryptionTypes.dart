// ignore: file_names
import 'package:encrypt_bho/encrypt_bho/encryption/encrypts/abstract_encrypt.dart';
import 'package:encrypt_bho/encrypt_bho/encryption/encrypts/encrypt_binary.dart';
import 'package:encrypt_bho/encrypt_bho/encryption/encrypts/encrypt_hex.dart';
import 'package:encrypt_bho/encrypt_bho/encryption/encrypts/encrypt_octal.dart';

enum EncryptionTypes {
  binary,
  octal,
  hex,
}

extension EncryptionExtension on EncryptionTypes {
  Encrypt get getDumbObject {
    switch (index) {
      case 0:
        return Binary.dumb();
      case 1:
        return Octal.dumb();
      case 2:
        return Hex.dumb();
      default:
        return Binary.dumb();
    }
  }
}
