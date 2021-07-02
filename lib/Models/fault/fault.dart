import 'package:json_annotation/json_annotation.dart';

part 'fault.g.dart';

@JsonSerializable()
class Fault {
  int statusCode;
  String? message;

  Fault(this.statusCode, this.message);

  factory Fault.fromJson(Map<String, dynamic> json) =>
      _$FaultFromJson(json);

  Map<String, dynamic> toJson() => _$FaultToJson(this);

  @override
  bool operator ==(Object other) =>
      other is Fault && other.message == message && other.statusCode == statusCode;

  @override
  int get hashCode => message.hashCode * 31 ^ statusCode.hashCode;
}

class FaultConverter<T> implements JsonConverter<T, Object?> {
  const FaultConverter();

  @override
  T fromJson(Object? json) {
    if (json is Map<String, dynamic> &&
        json.containsKey('statusCode') &&
        json.containsKey('message')) {
      return Fault.fromJson(json) as T;
    }
    return json as T;
  }

  @override
  Object? toJson(T object) => object;
}
