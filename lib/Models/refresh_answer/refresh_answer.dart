
import 'package:json_annotation/json_annotation.dart';
import 'package:strava_flutter/models/fault/fault.dart';

part 'refresh_answer.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class RefreshAnswer {
  Fault? fault;
  String? accessToken;
  String? refreshToken;
  int? expiresAt;
  int? expiresIn;

  RefreshAnswer();
  
  factory RefreshAnswer.fromJson(Map<String, dynamic> json) =>
      _$RefreshAnswerFromJson(json);
  Map<String, dynamic> toJson() => _$RefreshAnswerToJson(this);
}
