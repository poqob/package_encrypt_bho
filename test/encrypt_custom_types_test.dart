import 'package:encrypt_bho/encrypt_bho/converter/binary_converter.dart';
import 'package:encrypt_bho/encrypt_bho/converter/hex_converter.dart';
import 'package:test/test.dart';

/**import 'package:encrypt_custom_types/encrypt_custom_types.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    final awesome = Awesome();

    setUp(() {
      // Additional setup goes here.
    });

    test('First Test', () {
      expect(awesome.isAwesome, isTrue);
    });
  });
}
 */

void main() {
  group('A group of tests', () {
    setUp(() {
      // Additional setup goes here.
    });
    final con = BinaryConverter.defaultConverter();
    final con2 = HexConverter.defaultConverter();

    test('First Test', () {
      expect(con2.decode("61").first, "a");
    });
  });
}
