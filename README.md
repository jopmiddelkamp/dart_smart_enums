# Smart Enums
## Author: [Jop Middelkamp](https://github.com/jopmiddelkamp)

A package with a solution to use create smart enums.

## Usage

```dart
final bestFramework = Framework.flutter;

print('${bestFramework == Framework.flutter}'); // Prints 'true'
print('${bestFramework == Framework.maui}'); // Prints 'false'

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
```

## Note

Inspired by [Steve Smith](https://github.com/ardalis)'s smart enum .NET [library](https://github.com/ardalis/SmartEnum).
