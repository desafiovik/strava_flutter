import 'package:json_annotation/json_annotation.dart';

part 'urls.g.dart';

@JsonSerializable()
class Urls {
  @JsonKey(name: '100')
  String? s100;
  @JsonKey(name: '600')
  String? s600;

  Urls({this.s100, this.s600});

  factory Urls.fromJson(Map<String, dynamic> json) => _$UrlsFromJson(json);
  Map<String, dynamic> toJson() => _$UrlsToJson(this);
}
