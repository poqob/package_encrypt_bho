import 'package:encrypt_custom_types/encrypt_bho/coder/abstract_coder.dart';
import 'package:encrypt_custom_types/encrypt_bho/coder/m_code/m_binary_code.dart';
import 'package:encrypt_custom_types/encrypt_bho/encryption/encrypts/encrypt_binary.dart';

class BinaryCoder extends ACoder with BinaryCode {
  @override
  List<Binary> encode(String text) => BinaryCode.textToBinary(text);
}
