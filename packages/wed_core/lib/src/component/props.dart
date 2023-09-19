/// {@template props}
/// The [Props] class is an abstraction for a props that
/// can be applied to a `Component`.
/// {@endtemplate}
abstract class Props<S extends Style> {
  /// Constructs a [Props] </br>
  /// {@macro props}
  const Props({
    this.style,
    this.key,
  });

  /// The style for a `Component`, extends [Style].
  final S? style;

  /// A immutable and unique key for a `Component`
  final String? key;
}

/// {@template style}
/// The [Style] class is an abstraction for a style that
/// can be applied to a `Component`.
/// {@endtemplate}
abstract class Style {
  /// Constructs a [Style] </br>
  /// {@macro style}
  const Style();
}
