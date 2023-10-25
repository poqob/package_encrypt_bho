import 'package:encrypt_bho/encrypt_bho/encryption/enum_decodes.dart';
import 'package:encrypt_bho/encrypt_bho/encryption/enum_encodes.dart';

/// This file contains the [Algorithms] enum and its extension [ExtensionAlgorithms].
/// The [Algorithms] enum lists the available encryption algorithms, including text to binary, text to octal, text to hexadecimal, binary to text, octal to text, and hexadecimal to text.
/// The [ExtensionAlgorithms] extension provides a [calculate] method that takes an [input] string and returns a list of encrypted or decrypted values based on the selected algorithm.
/// The [calculate] method uses [BinaryConverter], [OctalConverter], and [HexConverter] to perform the encryption and decryption operations.

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
        return Encodes.text2binary.calculate(input);
      case 1:
        return Encodes.text2octal.calculate(input);
      case 2:
        return Encodes.text2hex.calculate(input);
      case 3:
        return Decodes.binary2text.calculate(input);
      case 4:
        return Decodes.octal2text.calculate(input);
      case 5:
        return Decodes.hex2text.calculate(input);
      default:
        return [];
    }
  }
}
