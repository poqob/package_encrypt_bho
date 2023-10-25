import 'package:encrypt_custom_types/encrypt_bho/encryption/encrypts/abstract_encrypt.dart';

abstract class ACoder {
  List<Encrypt> encode(String text); // abstract method to encode the text
}
