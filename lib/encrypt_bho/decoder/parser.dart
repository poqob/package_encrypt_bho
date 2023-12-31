import 'package:encrypt_bho/encrypt_bho/encryption/encrypts/abstract_encrypt.dart';
import 'package:encrypt_bho/encrypt_bho/encryption/enum_encryptionTypes.dart';
import 'package:encrypt_bho/encrypt_bho/encryption/parser/parser.dart';

List<Encrypt> stringToEncrypts(
    String input, Map<String, int> weights, EncryptionTypes type) {
  List<Encrypt> list = List.empty(growable: true);
  Encrypt encrypt;

  input.split(' ').forEach(
    (element) {
      encrypt = type.getDumbObject;
      encrypt.setEncrypt = parse(element, weights, type);

      list.add(encrypt);
    },
  );
  list.removeWhere(
    (element) => element.getEncrypt.isEmpty,
  );
  for (Encrypt element in list) {
    if (element.getEncrypt.isEmpty) {
      element.setEncrypt = " ";
    }
  }
  return list;
}
