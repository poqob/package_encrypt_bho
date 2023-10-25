import 'package:encrypt_bho/encrypt_bho/coder/octal_coder.dart';
import 'package:encrypt_bho/encrypt_bho/converter/abstract_converter.dart';
import 'package:encrypt_bho/encrypt_bho/decoder/octal_decoder.dart';
import 'package:encrypt_bho/encrypt_bho/encryption/encrypts/abstract_encrypt.dart';

class OctalConverter extends AConverter {
  OctalConverter({required OctalEncoder coder, required OctalDecoder decoder})
      : super(encoder: coder, decoder: decoder);

  // Factory constructor
  factory OctalConverter.defaultConverter() {
    return OctalConverter(coder: OctalEncoder(), decoder: OctalDecoder());
  }

  List<Encrypt> encode(String text) => super.encoder.encode(text);

  List<String> decode(String encrypts) => super.decoder.decode(encrypts);
}
