import 'package:json_annotation/json_annotation.dart';

part 'highlighted_kudosers.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class HighlightedKudosers {
  String? destinationUrl;
  String? displayName;
  String? avatarUrl;
  bool? showName;

  HighlightedKudosers({
    this.destinationUrl,
    this.displayName,
    this.avatarUrl,
    this.showName,
  });

  factory HighlightedKudosers.fromJson(Map<String, dynamic> json) =>
      _$HighlightedKudosersFromJson(json);
  Map<String, dynamic> toJson() => _$HighlightedKudosersToJson(this);
}
