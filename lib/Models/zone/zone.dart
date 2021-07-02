import 'package:strava_flutter/models/distribution_bucket/distribution_bucket.dart';
import 'package:strava_flutter/models/fault/fault.dart';
import 'package:strava_flutter/models/info_zones/info_zones.dart';

class Zone {
  Fault? fault;
  InfoZones? infoZones;

  Zone({this.fault, this.infoZones});

  factory Zone.fromJson(Map<String, dynamic> firstJson) {
    final fault = Fault(99, '');

    if (firstJson['heart_rate'] != null) {
      final parsedJson = firstJson['heart_rate'];
      final _customZones = parsedJson['custom_zones'];
      final _infoZones = InfoZones();
      final list = parsedJson['zones'] as List;
      final List<DistributionBucket> _distributionBucket = list
          .map((i) => DistributionBucket.fromJson(i as Map<String, dynamic>))
          .toList();
      _infoZones.customZones = _customZones as bool?;
      _infoZones.zones = _distributionBucket;

      return Zone(
        fault: fault,
        infoZones: _infoZones,
      );
    } else {
      return Zone(fault: fault);
    }
  }
}
