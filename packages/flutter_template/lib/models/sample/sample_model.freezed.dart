// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sample_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SampleTearOff {
  const _$SampleTearOff();

  _Sample call({int count = 0, String text = ''}) {
    return _Sample(
      count: count,
      text: text,
    );
  }
}

/// @nodoc
const $Sample = _$SampleTearOff();

/// @nodoc
mixin _$Sample {
  int get count => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SampleCopyWith<Sample> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SampleCopyWith<$Res> {
  factory $SampleCopyWith(Sample value, $Res Function(Sample) then) =
      _$SampleCopyWithImpl<$Res>;
  $Res call({int count, String text});
}

/// @nodoc
class _$SampleCopyWithImpl<$Res> implements $SampleCopyWith<$Res> {
  _$SampleCopyWithImpl(this._value, this._then);

  final Sample _value;
  // ignore: unused_field
  final $Res Function(Sample) _then;

  @override
  $Res call({
    Object? count = freezed,
    Object? text = freezed,
  }) {
    return _then(_value.copyWith(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SampleCopyWith<$Res> implements $SampleCopyWith<$Res> {
  factory _$SampleCopyWith(_Sample value, $Res Function(_Sample) then) =
      __$SampleCopyWithImpl<$Res>;
  @override
  $Res call({int count, String text});
}

/// @nodoc
class __$SampleCopyWithImpl<$Res> extends _$SampleCopyWithImpl<$Res>
    implements _$SampleCopyWith<$Res> {
  __$SampleCopyWithImpl(_Sample _value, $Res Function(_Sample) _then)
      : super(_value, (v) => _then(v as _Sample));

  @override
  _Sample get _value => super._value as _Sample;

  @override
  $Res call({
    Object? count = freezed,
    Object? text = freezed,
  }) {
    return _then(_Sample(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Sample implements _Sample {
  const _$_Sample({this.count = 0, this.text = ''});

  @JsonKey()
  @override
  final int count;
  @JsonKey()
  @override
  final String text;

  @override
  String toString() {
    return 'Sample(count: $count, text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Sample &&
            const DeepCollectionEquality().equals(other.count, count) &&
            const DeepCollectionEquality().equals(other.text, text));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(count),
      const DeepCollectionEquality().hash(text));

  @JsonKey(ignore: true)
  @override
  _$SampleCopyWith<_Sample> get copyWith =>
      __$SampleCopyWithImpl<_Sample>(this, _$identity);
}

abstract class _Sample implements Sample {
  const factory _Sample({int count, String text}) = _$_Sample;

  @override
  int get count;
  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$SampleCopyWith<_Sample> get copyWith => throw _privateConstructorUsedError;
}
