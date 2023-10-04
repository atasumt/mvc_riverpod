import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_response_data.freezed.dart';
part 'login_response_data.g.dart';

@freezed
class LoginResponseData with _$LoginResponseData {
  factory LoginResponseData({
    String? token,
  }) = _LoginResponseData;

  factory LoginResponseData.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseDataFromJson(json);
}
