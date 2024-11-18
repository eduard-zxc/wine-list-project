// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wine.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Wine _$WineFromJson(Map<String, dynamic> json) => Wine(
      name: json['name'] as String?,
      image: json['image'] as String?,
      criticScore: (json['critic_score'] as num).toInt(),
      bottleSize: json['bottle_size'] as String?,
      priceUsd: (json['price_usd'] as num).toDouble(),
      type: json['type'] as String?,
      location: json['location'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$WineToJson(Wine instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('image', instance.image);
  val['critic_score'] = instance.criticScore;
  writeNotNull('bottle_size', instance.bottleSize);
  val['price_usd'] = instance.priceUsd;
  writeNotNull('type', instance.type);
  writeNotNull('location', instance.location);
  return val;
}
