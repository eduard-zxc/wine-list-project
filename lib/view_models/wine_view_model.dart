import 'package:flutter/services.dart';
import 'package:list_project/models/wine.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:convert';
import 'package:list_project/utils/json_string.dart';

class WineViewModel {
  final jsonData = rootBundle.loadString('assets/v3.json');

  final List<Wine> wines = (jsonDecode(jsonString)['carousel'] as List)
      .map((json) => Wine.fromJson(json))
      .toList();

  // late final List<Wine> wines;

  // Future<List<Wine>> fetchWines() async {
  //   final jsonString = await rootBundle.loadString('models/v3.json');
  //   final jsonData = jsonDecode(jsonString);
  //   final List<Wine> wines = (jsonData['carousel'] as List)
  //       .map((json) => Wine.fromJson(json))
  //       .toList();
  //   return wines;
  // }
}

final wineProvider = Provider((ref) => WineViewModel());
