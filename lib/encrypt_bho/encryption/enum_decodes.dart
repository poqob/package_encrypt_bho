import 'package:encrypt_bho/encrypt_bho/converter/binary_converter.dart';
import 'package:encrypt_bho/encrypt_bho/converter/hex_converter.dart';
import 'package:encrypt_bho/encrypt_bho/converter/octal_converter.dart';

enum Decodes {
  binary2text,
  octal2text,
  hex2text,
}

extension ExtensionDecodes on Decodes {
  List<String> calculate(String input) {
    switch (index) {
      case 0:
        return BinaryConverter.defaultConverter().decode(input);
      case 1:
        return OctalConverter.defaultConverter().decode(input);
      case 2:
        return HexConverter.defaultConverter().decode(input);
      default:
        return [];
    }
  }
}
