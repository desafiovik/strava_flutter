import 'package:json_annotation/json_annotation.dart';
import 'package:strava_flutter/models/primary/primary.dart';

part 'photos.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class Photos {
  Primary? primary;
  bool? usePrimaryPhoto;
  int? count;

  Photos({this.primary, this.usePrimaryPhoto, this.count});

  factory Photos.fromJson(Map<String, dynamic> json) => _$PhotosFromJson(json);
  Map<String, dynamic> toJson() => _$PhotosToJson(this);
}
