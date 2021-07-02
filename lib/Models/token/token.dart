import 'package:json_annotation/json_annotation.dart';

part 'token.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Token {
  String? accessToken;
  String? refreshToken;
  String? tokenType;
  int? expiresAt;
  int? expiresIn; // in seconds
  String? scope;

  Token();

  @override
  String toString() => toJson().toString();

  factory Token.fromJson(Map<String, dynamic> json) => _$TokenFromJson(json);
  Map<String, dynamic> toJson() => _$TokenToJson(this);
}
