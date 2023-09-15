import 'package:encrypt_bho/encrypt_bho/encryption/encrypts/abstract_encrypt.dart';

abstract class ACoder {
  List<Encrypt> encode(String text);
}
