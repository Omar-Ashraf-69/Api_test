

import 'package:json_annotation/json_annotation.dart';

part 'error_model.g.dart';
@JsonSerializable()
class ErrorModel {
  final String message;
  final int code;
  ErrorModel({required this.message,required this.code,});


  factory ErrorModel.fromJson(Map<String, dynamic> json) => _$ErrorModelFromJson(json);
  Map<String, dynamic> toJson() => _$ErrorModelToJson(this);
  // factory ErrorModel.fromJson(Map<String, dynamic> json) {
  //   return ErrorModel(message: json[ApiKey.message],code: json[ApiKey.code],);
  // }
  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> json = <String, dynamic>{};
  //   json[ApiKey.status] = status;
  //   json[ApiKey.code] = code;
  //   json[ApiKey.message] = message;
  //   return json;
  // }
}
