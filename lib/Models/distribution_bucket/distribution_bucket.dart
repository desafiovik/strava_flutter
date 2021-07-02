import 'package:json_annotation/json_annotation.dart';

part 'distribution_bucket.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class DistributionBucket {
  int? max;
  int? min;

  DistributionBucket({this.max, this.min});

  factory DistributionBucket.fromJson(Map<String, dynamic> json) =>
      _$DistributionBucketFromJson(json);
  Map<String, dynamic> toJson() => _$DistributionBucketToJson(this);
}
