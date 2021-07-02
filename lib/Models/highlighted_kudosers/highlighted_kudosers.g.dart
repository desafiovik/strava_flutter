// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'highlighted_kudosers.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HighlightedKudosers _$HighlightedKudosersFromJson(Map<String, dynamic> json) {
  return HighlightedKudosers(
    destinationUrl: json['destination_url'] as String?,
    displayName: json['display_name'] as String?,
    avatarUrl: json['avatar_url'] as String?,
    showName: json['show_name'] as bool?,
  );
}

Map<String, dynamic> _$HighlightedKudosersToJson(
        HighlightedKudosers instance) =>
    <String, dynamic>{
      'destination_url': instance.destinationUrl,
      'display_name': instance.displayName,
      'avatar_url': instance.avatarUrl,
      'show_name': instance.showName,
    };
