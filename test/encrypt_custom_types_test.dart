import 'package:encrypt_bho/encrypt_bho/encryption/enum_algorithms.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    setUp(() {
      // Additional setup goes here.
    });
    test('First Test', () {
      String text = "lorem ipsum";
      String binaryToTextResult = "";
      String result = "";
      Algorithms algorithm = Algorithms.text2binary;
      // genereta binary form of text
      algorithm.calculate(text).forEach(
            (element) => result += " $element",
          );
      // generate text from binary form
      algorithm = Algorithms.binary2text;
      algorithm.calculate(result).forEach(
            (element) => binaryToTextResult += element,
          );
      expect(text, binaryToTextResult);
    });
  });
}
