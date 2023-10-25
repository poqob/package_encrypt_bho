import 'package:encrypt_bho/encrypt_bho/coder/hex_coder.dart';
import 'package:encrypt_bho/encrypt_bho/converter/abstract_converter.dart';
import 'package:encrypt_bho/encrypt_bho/decoder/hex_decoder.dart';
import 'package:encrypt_bho/encrypt_bho/encryption/encrypts/abstract_encrypt.dart';

class HexConverter extends AConverter {
  HexConverter({required HexCoder coder, required HexDecoder decoder})
      : super(encoder: coder, decoder: decoder);

  // Factory constructor
  factory HexConverter.defaultConverter() {
    return HexConverter(coder: HexCoder(), decoder: HexDecoder());
  }

  List<Encrypt> encode(String text) => super.encoder.encode(text);

  List<String> decode(String encrypts) => super.decoder.decode(encrypts);

  // write any other hex based methods if needed.
}
