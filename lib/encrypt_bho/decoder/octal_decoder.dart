import 'package:encrypt_custom_types/encrypt_bho/decoder/abstract_decoder.dart';
import 'package:encrypt_custom_types/encrypt_bho/decoder/m_decode/m_octal_decode.dart';
import 'package:encrypt_custom_types/encrypt_bho/decoder/parser.dart';
import 'package:encrypt_custom_types/encrypt_bho/encryption/encrypts/m_weights.dart';
import 'package:encrypt_custom_types/encrypt_bho/encryption/enum_encryptionTypes.dart';

class OctalDecoder extends ADecoder with OctalDecode {
  @override
  List<String> decode(String encrypts) =>
      OctalDecode.octalToText(stringToEncrypts(
          encrypts, weightsMixin.octalWeights, EncryptionTypes.octal));
}
