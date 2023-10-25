import 'package:encrypt_custom_types/encrypt_bho/encryption/enum_encryptionTypes.dart';
import 'package:encrypt_custom_types/encrypt_bho/encryption/parser/parsing_error.dart';

/// Parses the given [text] using the provided [weights] and [type] of encryption.
///
/// Returns the parsed [text] if all characters in the [text] are within the scope of [weights].
/// Otherwise, throws a [ParsingError] with the details of the mismatched character and its index.
///
/// The [weights] parameter is a map of characters and their corresponding weights.
/// The [type] parameter is an instance of [EncryptionTypes] enum.
///
/// Example usage:
/// ```dart
/// Map<String, int> weights = {"9": 9,"a": 10,"A": 10,};
/// String text = 'abc';
/// EncryptionTypes type = EncryptionTypes.hex;
/// String parsedText = parse(text, weights, type); // returns 'abc'
/// ```

String parse(String text, Map<String, int> weights, EncryptionTypes type) {
  bool success = true;
  String? missMatchCharacter;
  int? missMatchIndex;
  // Is the expression within the scope of weights?
  for (int i = 0; i < text.length; i++) {
    if (!weights.containsKey(text[i])) {
      missMatchCharacter = text[i];
      missMatchIndex = i;
      success = false;
      throw parsingError(
          text, type, weights, missMatchCharacter, missMatchIndex);
    }
  }
  return success ? text : "error";
}
