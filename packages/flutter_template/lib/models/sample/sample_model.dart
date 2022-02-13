import 'package:freezed_annotation/freezed_annotation.dart';

part 'sample_model.freezed.dart';

@freezed
class Sample with _$Sample {
  const factory Sample({
    @Default(0) int count,
    @Default('') String text,
  }) = _Sample;
}
