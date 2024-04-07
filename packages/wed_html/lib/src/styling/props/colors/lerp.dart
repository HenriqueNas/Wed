// This is a copy of the Flutter's lerp.dart and math.dart file.

// ignore_for_file: parameter_assignments

part of 'color.dart';

/// Linearly interpolate between two numbers, `a` and `b`, by an extrapolation
/// factor `t`.
///
/// When `a` and `b` are equal or both NaN, `a` is returned.  Otherwise,
/// `a`, `b`, and `t` are required to be finite or null, and the result of `a +
/// (b - a) * t` is returned, where nulls are defaulted to 0.0.
double? lerpDouble(num? a, num? b, double t) {
  if (a == b || (a?.isNaN ?? false) && (b?.isNaN ?? false)) {
    return a?.toDouble();
  }
  a ??= 0.0;
  b ??= 0.0;

  assert(a.isFinite, 'Cannot interpolate between finite and non-finite values');
  assert(b.isFinite, 'Cannot interpolate between finite and non-finite values');
  assert(t.isFinite, 't must be finite when interpolating between values');
  return a * (1.0 - t) + b * t;
}

/// Linearly interpolate between two doubles.
///
/// Same as [lerpDouble] but specialized for non-null `double` type.
double _lerpDouble(double a, double b, double t) {
  return a * (1.0 - t) + b * t;
}

/// Linearly interpolate between two integers.
///
/// Same as [lerpDouble] but specialized for non-null `int` type.
double _lerpInt(int a, int b, double t) {
  return a + (b - a) * t;
}

/// Same as [num.clamp] but specialized for non-null [int].
int _clampInt(int value, int min, int max) {
  assert(
    min <= max,
    'min must be less than or equal to max',
  );

  if (value < min) {
    return min;
  } else if (value > max) {
    return max;
  } else {
    return value;
  }
}

/// Same as [num.clamp] but optimized for a non-null [double].
///
/// This is faster because it avoids polymorphism, boxing, and special cases for
/// floating point numbers.
//
// See also: //dev/benchmarks/microbenchmarks/lib/foundation/clamp.dart
double clampDouble(double x, double min, double max) {
  assert(
    min <= max && !max.isNaN && !min.isNaN,
    'min must be less than or equal to max',
  );

  if (x < min) return min;

  if (x > max) return max;

  if (x.isNaN) return max;

  return x;
}
