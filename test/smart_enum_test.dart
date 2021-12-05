import 'package:smart_enums/smart_enums.dart';
import 'package:test/test.dart';

void main() {
  group('SmarEnum', () {
    test('Does name gets stored', () {
      expect(Framework.flutter.name, equals('Flutter'));
      expect(Framework.maui.name, equals('MAUI'));
    });
    test('Does value gets stored', () {
      expect(Framework.flutter.value, equals(1));
      expect(Framework.maui.value, equals(2));
    });
    test('Does equality compareer compare by value', () {
      expect(Framework.flutter, equals(Framework.flutter));
      expect(Framework.maui, isNot(equals(Framework.flutter)));
    });
  });

  group('SmartEnumWithValue', () {
    test('Does name gets stored', () {
      expect(Padding.small.name, equals('small'));
      expect(Padding.regular.name, equals('regular'));
      expect(Padding.big.name, equals('regular'));
    });
    test('Does value gets stored', () {
      expect(Padding.small.value, equals(8));
      expect(Padding.regular.value, equals(16));
      expect(Padding.big.value, equals(24));
    });
    test('Does equality compareer compare by value', () {
      expect(Padding.regular, equals(Padding.regular));
      expect(Padding.regular, isNot(equals(Padding.big)));
    });
  });
}

class Padding extends SmartEnumWithValue<Padding, double> {
  static const Padding small = Padding(
    name: 'small',
    value: 8.0,
  );
  static const Padding regular = Padding(
    name: 'regular',
    value: 16.0,
  );
  static const Padding big = Padding(
    name: 'regular',
    value: 24.0,
  );

  const Padding({
    required String name,
    required double value,
  }) : super(name, value);
}

class Framework extends SmartEnum<Framework> {
  static const Framework flutter = Framework(
    name: 'Flutter',
    value: 1,
  );
  static const Framework maui = Framework(
    name: 'MAUI',
    value: 2,
  );
  static const Framework reactNative = Framework(
    name: 'MAUI',
    value: 4,
  );

  const Framework({
    required String name,
    required int value,
  }) : super(name, value);
}
