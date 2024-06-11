/// {@template props}
/// A class representing props that can be passed to a component.
/// Props are immutable data that configure a component's behavior.
/// {@endtemplate}
abstract class Props<S extends Style> {
  /// Constructs a [Props].
  /// {@macro props}
  const Props({
    this.style,
    this.key,
  });

  /// The style for a `Component`, extends [Style].
  final S? style;

  /// A unique key used to identify the component in the component tree.
  final String? key;
}

/// {@template style}
/// A class representing style properties that can be applied to a component.
/// {@endtemplate}
abstract class Style {
  /// Constructs a [Style].
  /// {@macro style}
  const Style();
}
