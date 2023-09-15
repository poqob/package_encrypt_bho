import 'package:encrypt_custom_types/encrypt_bho/coder/abstract_coder.dart';
import 'package:encrypt_custom_types/encrypt_bho/decoder/abstract_decoder.dart';

abstract class AConverter {
  final ACoder encoder;
  final ADecoder decoder;
  AConverter({required this.encoder, required this.decoder});
}
