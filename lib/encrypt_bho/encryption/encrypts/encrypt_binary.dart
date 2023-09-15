import 'package:encrypt_bho/encrypt_bho/encryption/encrypts/abstract_encrypt.dart';
import 'package:encrypt_bho/encrypt_bho/encryption/encrypts/m_weights.dart';
import 'package:encrypt_bho/encrypt_bho/encryption/enum_encryptionTypes.dart';
import 'package:encrypt_bho/encrypt_bho/encryption/parser/parser.dart';

class Binary extends Encrypt {
  Binary(String encryptedText)
      : super(encryptedText,
            weights: weightsMixin.binaryWeights,
            encryptionType: EncryptionTypes.binary);

  Binary.dumb()
      : super(
          '',
          weights: weightsMixin.binaryWeights,
          encryptionType: EncryptionTypes.binary,
        );

  Binary.parse(String text)
      : super(parse(text, weightsMixin.binaryWeights, EncryptionTypes.binary),
            weights: weightsMixin.binaryWeights,
            encryptionType: EncryptionTypes.binary);
}
