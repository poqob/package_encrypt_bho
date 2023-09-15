import 'package:encrypt_bho/encrypt_bho/converter/binary_converter.dart';
import 'package:encrypt_bho/encrypt_bho/converter/hex_converter.dart';
import 'package:encrypt_bho/encrypt_bho/converter/octal_converter.dart';

enum Algorithms {
  text2binary,
  text2octal,
  text2hex,
  binary2text,
  octal2text,
  hex2text,
}

extension ExtensionAlghorithms on Algorithms {
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
      case 3:
        return BinaryConverter.defaultConverter().decode(input);
      case 4:
        return OctalConverter.defaultConverter().decode(input);
      case 5:
        return HexConverter.defaultConverter().decode(input);
      default:
        return [];
    }
  }
}
