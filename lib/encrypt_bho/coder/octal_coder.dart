import 'package:encrypt_bho/encrypt_bho/coder/m_code/m_octal_code.dart';
import 'package:encrypt_bho/encrypt_bho/coder/abstract_coder.dart';
import 'package:encrypt_bho/encrypt_bho/encryption/encrypts/encrypt_octal.dart';

class OctalEncoder extends ACoder with OctalCode {
  @override
  List<Octal> encode(String text) => OctalCode.textToOctal(text);
}
