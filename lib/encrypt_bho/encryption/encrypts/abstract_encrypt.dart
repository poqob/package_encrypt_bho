import 'package:encrypt_custom_types/encrypt_bho/encryption/enum_encryptionTypes.dart';

/// An abstract class representing an encryption algorithm.
abstract class Encrypt {
  String? _encryptedText;
  final EncryptionTypes _encryptionType;
  final Map<String, int> _weights;

  /// Creates an instance of [Encrypt] with the given [_encryptedText], [_weights], and [_encryptionType].
  Encrypt(this._encryptedText,
      {required Map<String, int> weights,
      required EncryptionTypes encryptionType})
      : _encryptionType = encryptionType,
        _weights = weights;

  /// Returns the [_weights] of the encryption algorithm.
  Map<String, int> get getWeights => _weights;

  /// Returns the [_encryptedText] of the encryption algorithm.
  String get getEncrypt => _encryptedText!;

  /// Sets the [_encryptedText] of the encryption algorithm to [enc].
  set setEncrypt(String enc) => _encryptedText = enc;

  /// Returns the [_encryptionType] of the encryption algorithm.
  String get getEncryptionType => _encryptionType.name;

  @override
  String toString() {
    return "type: ${_encryptionType.name}\nvalue:$_encryptedText";
  }
}
