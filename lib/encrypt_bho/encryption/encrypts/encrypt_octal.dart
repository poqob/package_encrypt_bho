import 'package:encrypt_custom_types/encrypt_bho/encryption/encrypts/abstract_encrypt.dart';
import 'package:encrypt_custom_types/encrypt_bho/encryption/encrypts/m_weights.dart';
import 'package:encrypt_custom_types/encrypt_bho/encryption/enum_encryptionTypes.dart';
import 'package:encrypt_custom_types/encrypt_bho/encryption/parser/parser.dart';

class Octal extends Encrypt with weightsMixin {
  Octal(String encryptedText)
      : super(encryptedText,
            weights: weightsMixin.octalWeights,
            encryptionType: EncryptionTypes.octal);

  Octal.dumb()
      : super('',
            weights: weightsMixin.octalWeights,
            encryptionType: EncryptionTypes.octal);

  Octal.parse(String text)
      : super(parse(text, weightsMixin.octalWeights, EncryptionTypes.octal),
            weights: weightsMixin.octalWeights,
            encryptionType: EncryptionTypes.octal);
}
