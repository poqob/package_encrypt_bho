import 'package:encrypt_custom_types/encrypt_bho/decoder/abstract_decoder.dart';
import 'package:encrypt_custom_types/encrypt_bho/decoder/m_decode/m_hex_decode.dart';
import 'package:encrypt_custom_types/encrypt_bho/decoder/parser.dart';
import 'package:encrypt_custom_types/encrypt_bho/encryption/encrypts/m_weights.dart';
import 'package:encrypt_custom_types/encrypt_bho/encryption/enum_encryptionTypes.dart';

class HexDecoder extends ADecoder with HexDecode {
  @override
  List<String> decode(String encrypts) => HexDecode.hexToText(
      stringToEncrypts(encrypts, weightsMixin.hexWeights, EncryptionTypes.hex));
}
