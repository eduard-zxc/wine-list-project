import 'package:json_annotation/json_annotation.dart';

part 'from.g.dart';

@JsonSerializable()
class From {
  final String country;
  final String city;

  From({
    required this.country,
    required this.city,
  });

  factory From.fromJson(Map<String, dynamic> json) => _$FromFromJson(json);
  Map<String, dynamic> toJson() => _$FromToJson(this);
}
