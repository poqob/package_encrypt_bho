import 'package:encrypt_bho/encrypt_bho/converter/binary_converter.dart';
import 'package:encrypt_bho/encrypt_bho/converter/hex_converter.dart';
import 'package:encrypt_bho/encrypt_bho/converter/octal_converter.dart';

enum Encodes {
  text2binary,
  text2octal,
  text2hex,
}

extension ExtensionEncode on Encodes {
  List<String> calculate(String input) {
    switch (index) {
      case 0:
        return BinaryConverter.defaultConverter()
            .encode(input)
            .map((e) => e.getEncrypt)
            .toList();
      case 1:
        return OctalConverter.defaultConverter()
            .encode(input)
            .map((e) => e.getEncrypt)
            .toList();
      case 2:
        return HexConverter.defaultConverter()
            .encode(input)
            .map((e) => e.getEncrypt)
            .toList();
      default:
        return [];
    }
  }
}
