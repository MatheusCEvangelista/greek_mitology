import 'dart:convert';
import 'package:flutter/services.dart';
import '../models/god.dart';

class ApiService {
  static Future<List<God>> fetchGods() async {
    final response = await rootBundle.loadString('assets/gods.json');
    final List data = json.decode(response);
    return data.map((json) => God.fromJson(json)).toList();
  }
}
