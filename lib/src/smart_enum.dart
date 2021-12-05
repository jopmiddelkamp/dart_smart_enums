/// A smarter enum that can be used to store additional data next to the value.
abstract class SmartEnum<TEnum> extends SmartEnumWithValue<TEnum, int> {
  /// Creates a new instance of the [SmartEnum] class.
  ///  - [name] The name of the enum.
  ///  - [value] The value of the enum.
  const SmartEnum(
    String name,
    int value,
  ) : super(name, value);
}

/// A smarter enum with a custom value that can be used to store additional data
/// as well.
abstract class SmartEnumWithValue<TEnum, TValue> {
  /// Creates a new instance of the [SmartEnumWithValue] class.
  ///  - [name] The name of the enum.
  ///  - [value] The value of the enum.
  const SmartEnumWithValue(
    this.name,
    this.value,
  );

  /// The name of the enum.
  final String name;

  /// The value of the enum.
  final TValue value;

  @override
  bool operator ==(Object other) =>
      other is SmartEnumWithValue<TEnum, TValue> && value == other.value;

  @override
  int get hashCode => value.hashCode;
}
