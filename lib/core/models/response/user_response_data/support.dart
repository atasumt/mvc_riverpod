import 'package:freezed_annotation/freezed_annotation.dart';

part 'support.freezed.dart';
part 'support.g.dart';

@freezed
class Support with _$Support {
  factory Support({
    String? url,
    String? text,
  }) = _Support;

  factory Support.fromJson(Map<String, dynamic> json) =>
      _$SupportFromJson(json);
}
