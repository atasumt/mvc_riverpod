import 'package:freezed_annotation/freezed_annotation.dart';

part 'error_response_data.freezed.dart';
part 'error_response_data.g.dart';

@freezed
class ErrorResponseData with _$ErrorResponseData {
  factory ErrorResponseData({
    String? error,
  }) = _ErrorResponseData;

  factory ErrorResponseData.fromJson(Map<String, dynamic> json) =>
      _$ErrorResponseDataFromJson(json);
}
