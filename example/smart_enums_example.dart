import 'package:smart_enums/smart_enums.dart';

void main() {
  final small = Padding.small;
  print('small: ${small == Padding.small}');
  print('regular: ${small == Padding.regular}');
  print('');
  final flutter = Framework.flutter;
  print('flutter: ${flutter == Framework.flutter}');
  print('maui: ${flutter == Framework.maui}');
  print('');
  print('Cross platform frameworks:');
  for (final framework in Framework.crossPlatformFrameworks) {
    print(' - ${framework.name}');
  }
}

class Padding extends SmartEnumWithValue<Padding, double> {
  static const Padding small = Padding(name: 'small', value: 8.0);
  static const Padding regular = Padding(name: 'regular', value: 16.0);
  static const Padding big = Padding(name: 'big', value: 24.0);

  const Padding({
    required String name,
    required double value,
  }) : super(name, value);
}

class Framework extends SmartEnum<Framework> {
  static const Framework flutter = Framework(
    name: 'Flutter',
    value: 1,
    isCrossPlatform: true,
    score: 10,
  );
  static const Framework maui = Framework(
    name: 'MAUI',
    value: 2,
    isCrossPlatform: true,
    score: 8,
  );
  static const Framework reactNative = Framework(
    name: 'React Native',
    value: 4,
    isCrossPlatform: true,
    score: 9,
  );

  const Framework({
    required String name,
    required int value,
    required this.isCrossPlatform,
    required this.score,
  }) : super(name, value);

  final bool isCrossPlatform;
  final int score;

  static List<Framework> get crossPlatformFrameworks => const [
        Framework.flutter,
        Framework.maui,
        Framework.reactNative,
      ].where((f) => f.isCrossPlatform).toList();
}
