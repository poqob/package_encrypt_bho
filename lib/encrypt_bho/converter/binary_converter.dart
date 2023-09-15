import 'package:encrypt_custom_types/encrypt_bho/coder/binary_coder.dart';
import 'package:encrypt_custom_types/encrypt_bho/converter/abstract_converter.dart';
import 'package:encrypt_custom_types/encrypt_bho/decoder/binary_decoder.dart';
import 'package:encrypt_custom_types/encrypt_bho/encryption/encrypts/abstract_encrypt.dart';

class BinaryConverter extends AConverter {
  BinaryConverter({required BinaryCoder coder, required BinaryDecoder decoder})
      : super(encoder: coder, decoder: decoder);

  // Factory constructor
  factory BinaryConverter.defaultConverter() {
    return BinaryConverter(coder: BinaryCoder(), decoder: BinaryDecoder());
  }

  List<Encrypt> encode(String text) => super.encoder.encode(text);

  List<String> decode(String encrypts) => super.decoder.decode(encrypts);

  // Add any other binary-based methods if needed.
}
