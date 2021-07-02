import 'package:json_annotation/json_annotation.dart';
import 'package:strava_flutter/globals.dart' as globals;
import 'package:strava_flutter/models/athlete/athlete.dart';
import 'package:strava_flutter/models/gear/gear.dart';
import 'package:strava_flutter/models/segment_effort/segment_effort.dart';
import 'package:strava_flutter/models/carte/carte.dart';
import 'package:strava_flutter/models/fault/fault.dart';
import 'package:strava_flutter/models/highlighted_kudosers/highlighted_kudosers.dart';
import 'package:strava_flutter/models/laps/laps.dart';
import 'package:strava_flutter/models/photos/photos.dart';
import 'package:strava_flutter/models/splits_metric/splits_metric.dart';

part 'detailed_activity.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class DetailedActivity {
  @FaultConverter()
  Fault? fault;
  int? id;
  int? resourceState;
  String? externalId;
  int? uploadId;
  Athlete? athlete;
  String? name;
  double? distance;
  int? movingTime;
  int? elapsedTime;
  double? totalElevationGain;
  String? type;
  String? startDate;
  String? startDateLocal;
  String? timezone;
  double? utcOffset;
  @JsonKey(defaultValue: [globals.defaultStartLatlng, globals.defaultEndlatlng])
  List<double>? startLatlng;
  List<double>? endLatlng;
  double? startLatitude;
  double? startLongitude;
  int? achievementCount;
  int? kudosCount;
  int? commentCount;
  int? athleteCount;
  int? photoCount;
  Carte? map;
  bool? trainer;
  bool? commute;
  bool? manual;
  bool? private;
  bool? flagged;
  String? gearId;
  bool? fromAcceptedTag;
  double? averageSpeed;
  double? maxSpeed;
  double? averageCadence;
  int? averageTemp;
  double? averageWatts;
  int? weightedAverageWatts;
  double? kilojoules;
  bool? deviceWatts;
  bool? hasHeartrate;
  int? maxWatts;
  double? elevHigh;
  double? elevLow;
  int? prCount;
  int? totalPhotoCount;
  bool? hasKudoed;
  int? workoutType;
  double? sufferScore;
  String? description;
  double? calories;
  List<SegmentEffort>? segmentEfforts;
  List<SplitsMetric>? splitsMetric;
  List<Laps>? laps;
  Gear? gear;
  String? partnerBrandTag;
  Photos? photos;
  List<HighlightedKudosers>? highlightedKudosers;
  String? deviceName;
  String? embedToken;
  bool? segmentLeaderboardOptOut;
  bool? leaderboardOptOut;

  DetailedActivity({
    Fault? fault,
    this.id,
    this.resourceState,
    this.externalId,
    this.uploadId,
    this.athlete,
    this.name,
    this.distance,
    this.movingTime,
    this.elapsedTime,
    this.totalElevationGain,
    this.type,
    this.startDate,
    this.startDateLocal,
    this.timezone,
    this.utcOffset,
    this.startLatlng,
    this.endLatlng,
    this.startLatitude,
    this.startLongitude,
    this.achievementCount,
    this.kudosCount,
    this.commentCount,
    this.athleteCount,
    this.photoCount,
    this.map,
    this.trainer,
    this.commute,
    this.manual,
    this.private,
    this.flagged,
    this.gearId,
    this.fromAcceptedTag,
    this.averageSpeed,
    this.maxSpeed,
    this.averageCadence,
    this.averageTemp,
    this.averageWatts,
    this.weightedAverageWatts,
    this.kilojoules,
    this.deviceWatts,
    this.hasHeartrate,
    this.maxWatts,
    this.elevHigh,
    this.elevLow,
    this.prCount,
    this.totalPhotoCount,
    this.hasKudoed,
    this.workoutType,
    this.sufferScore,
    this.description,
    this.calories,
    this.segmentEfforts,
    this.splitsMetric,
    this.laps,
    this.gear,
    this.partnerBrandTag,
    this.photos,
    this.highlightedKudosers,
    this.deviceName,
    this.embedToken,
    this.segmentLeaderboardOptOut,
    this.leaderboardOptOut,
  }) : fault = Fault(88, '');

  factory DetailedActivity.fromJson(Map<String, dynamic> json) =>
      _$DetailedActivityFromJson(json);
  Map<String, dynamic> toJson() => _$DetailedActivityToJson(this);
}
