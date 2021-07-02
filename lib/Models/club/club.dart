import 'package:json_annotation/json_annotation.dart';
import 'package:strava_flutter/models/fault/fault.dart';

part 'club.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class Club {
  @FaultConverter()
  Fault? fault;
  int? id;
  int? resourceState;
  String? name;
  String? profileMedium;
  String? profile;
  String? coverPhoto;
  String? coverPhotoSmall;
  String? sportType;
  String? city;
  String? state;
  String? country;
  bool? private;
  int? memberCount;
  bool? featured;
  bool? verified;
  String? url;
  String? membership;
  bool? admin;
  bool? owner;
  String? description;
  String? clubType;
  int? postCount;
  int? ownerId;
  int? followingCount;

  Club({
    Fault? fault,
    this.id,
    this.resourceState,
    this.name,
    this.profileMedium,
    this.profile,
    this.coverPhoto,
    this.coverPhotoSmall,
    this.sportType,
    this.city,
    this.state,
    this.country,
    this.private,
    this.memberCount,
    this.featured,
    this.verified,
    this.url,
    this.membership,
    this.admin,
    this.owner,
    this.description,
    this.clubType,
    this.postCount,
    this.ownerId,
    this.followingCount,
  }) : fault = Fault(88, '');

  factory Club.fromJson(Map<String, dynamic> json) => _$ClubFromJson(json);
  Map<String, dynamic> toJson() => _$ClubToJson(this);
}
