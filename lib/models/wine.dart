import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:json_annotation/json_annotation.dart';

part 'wine.g.dart';

@JsonSerializable(includeIfNull: false)
class Wine {
  final String? name;
  final String? image;
  @JsonKey(name: 'critic_score')
  final int criticScore;
  @JsonKey(name: 'bottle_size')
  final String? bottleSize;
  @JsonKey(name: 'price_usd')
  final double priceUsd;
  final String? type;
  final Map<String, dynamic>? location;

  Wine({
    required this.name,
    required this.image,
    required this.criticScore,
    required this.bottleSize,
    required this.priceUsd,
    required this.type,
    required this.location,
  });

  factory Wine.fromJson(Map<String, dynamic> json) => _$WineFromJson(json);
  Map<String, dynamic> toJson() => _$WineToJson(this);
}

final jsonProvider = FutureProvider.autoDispose<List<dynamic>>((ref) async {
  final response = await rootBundle.loadString('models/v3.json');
  return jsonDecode(response);
});
