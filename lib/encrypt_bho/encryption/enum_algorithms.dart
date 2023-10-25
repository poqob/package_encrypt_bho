/// This file contains the [Algorithms] enum and its extension [ExtensionAlgorithms].
/// The [Algorithms] enum lists the available encryption algorithms, including text to binary, text to octal, text to hexadecimal, binary to text, octal to text, and hexadecimal to text.
/// The [ExtensionAlgorithms] extension provides a [calculate] method that takes an [input] string and returns a list of encrypted or decrypted values based on the selected algorithm.
/// The [calculate] method uses [BinaryConverter], [OctalConverter], and [HexConverter] to perform the encryption and decryption operations.
import 'package:encrypt_custom_types/encrypt_bho/converter/binary_converter.dart';
import 'package:encrypt_custom_types/encrypt_bho/converter/hex_converter.dart';
import 'package:encrypt_custom_types/encrypt_bho/converter/octal_converter.dart';

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
