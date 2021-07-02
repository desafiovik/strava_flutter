import 'package:json_annotation/json_annotation.dart';
import 'package:strava_flutter/models/bikes/bikes.dart';
import 'package:strava_flutter/models/fault/fault.dart';
import 'package:strava_flutter/models/shoes/shoes.dart';

part 'detailed_athlete.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class DetailedAthlete {
  Fault? fault;
  int? id;
  String? username;
  int? resourceState;
  String? firstname;
  String? lastname;
  String? city;
  String? state;
  String? country;
  String? sex;
  bool? premium;
  String? createdAt;
  String? updatedAt;
  int? badgeTypeId;
  String? profileMedium;
  String? profile;
  String? friend;
  String? follower;
  int? followerCount;
  int? friendCount;
  int? mutualFriendCount;
  int? athleteType;
  String? datePreference;
  String? measurementPreference;
  // List<Club> clubs;
  int? ftp;
  double? weight;
  List<Bikes>? bikes;
  List<Shoes>? shoes;

  DetailedAthlete({
    Fault? fault,
    this.id,
    this.username,
    this.resourceState,
    this.firstname,
    this.lastname,
    this.city,
    this.state,
    this.country,
    this.sex,
    this.premium,
    this.createdAt,
    this.updatedAt,
    this.badgeTypeId,
    this.profileMedium,
    this.profile,
    this.friend,
    this.follower,
    this.followerCount,
    this.friendCount,
    this.mutualFriendCount,
    this.athleteType,
    this.datePreference,
    this.measurementPreference,
    // this.clubs,
    this.ftp,
    this.weight,
    this.bikes,
    this.shoes,
  }) : fault = Fault(99, '');

  factory DetailedAthlete.fromJson(Map<String, dynamic> json) =>
      _$DetailedAthleteFromJson(json);
  Map<String, dynamic> toJson() => _$DetailedAthleteToJson(this);
}
