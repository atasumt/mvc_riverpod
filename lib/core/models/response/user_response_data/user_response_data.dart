import 'package:freezed_annotation/freezed_annotation.dart';

import 'datum.dart';
import 'support.dart';

part 'user_response_data.freezed.dart';
part 'user_response_data.g.dart';

@freezed
class UserResponseData with _$UserResponseData {
  factory UserResponseData({
    int? page,
    @JsonKey(name: 'per_page') int? perPage,
    int? total,
    @JsonKey(name: 'total_pages') int? totalPages,
    List<Datum>? data,
    Support? support,
  }) = _UserResponseData;

  factory UserResponseData.fromJson(Map<String, dynamic> json) =>
      _$UserResponseDataFromJson(json);
}
