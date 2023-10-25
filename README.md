<!-- 
This is a converter app that allows you to create custom converters for different encoding and decoding operations.
-->

# Converter App

## Introduction
This is a converter app that allows you to create custom converters for different encoding and decoding operations.

```dart

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
      expect(text, binaryToTextResult); // true
```
