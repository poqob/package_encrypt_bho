import 'package:encrypt_bho/encrypt_bho/coder/m_code/m_hex_code.dart';
import 'package:encrypt_bho/encrypt_bho/encryption/encrypts/encrypt_hex.dart';
import 'package:encrypt_bho/encrypt_bho/coder/abstract_coder.dart';

class HexCoder extends ACoder with HexCode {
  @override
  List<Hex> encode(String text) => HexCode.textToHex(text);
}
