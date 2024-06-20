import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import '../../features/homepage/presentation/model/model.dart';

Future<Map<String, dynamic>> loadJson() async {
  String jsonString = await rootBundle.loadString('lib/features/homepage/data/dummyData.json');
  return json.decode(jsonString);
}

// Parsing JSON Data
List<Item> parseItems(List<dynamic> jsonList) {
  return jsonList.map((json) => Item.fromJson(json)).toList();
}
