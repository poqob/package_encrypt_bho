import 'package:encrypt_bho/encrypt_bho/encryption/enum_encryptionTypes.dart';

Exception parsingError(
        String text,
        EncryptionTypes type,
        Map<String, int> weights,
        String missMatchCharacter,
        int missMatchIndex) =>
    Exception(
      "Parsing error string->${type.name}.\nTried to parse:$text\nWeights are: ${weights.keys}\nThe miss match character and index is: $missMatchCharacter at $missMatchIndex\n",
    );
