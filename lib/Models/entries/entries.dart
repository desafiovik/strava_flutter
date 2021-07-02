import 'package:json_annotation/json_annotation.dart';

part 'entries.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Entries {
  String? athleteName;
  int? elapsedTime;
  int? movingTime;
  String? startDate;
  String? startDateLocal;
  int? rank;

  Entries({
    this.athleteName,
    this.elapsedTime,
    this.movingTime,
    this.startDate,
    this.startDateLocal,
    this.rank,
  });

  factory Entries.fromJson(Map<String, dynamic> json) => _$EntriesFromJson(json);
  Map<String, dynamic> toJson() => _$EntriesToJson(this);
}
