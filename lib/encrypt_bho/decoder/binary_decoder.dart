import 'package:encrypt_bho/encrypt_bho/decoder/abstract_decoder.dart';
import 'package:encrypt_bho/encrypt_bho/decoder/parser.dart';
import 'package:encrypt_bho/encrypt_bho/encryption/encrypts/m_weights.dart';
import 'package:encrypt_bho/encrypt_bho/encryption/enum_encryptionTypes.dart';
import 'package:encrypt_bho/encrypt_bho/decoder/m_decode/m_binary_decode.dart';

class BinaryDecoder extends ADecoder with BinaryDecode {
  @override
  List<String> decode(String encrypts) =>
      BinaryDecode.binaryToText(stringToEncrypts(
          encrypts, weightsMixin.binaryWeights, EncryptionTypes.binary));
}
