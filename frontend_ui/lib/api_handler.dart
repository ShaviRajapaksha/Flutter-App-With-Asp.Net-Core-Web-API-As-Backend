import 'dart:convert';
import 'package:http/http.dart' as http;

import 'model.dart';

class ApiHandler {
  final String baseUrl = "http://localhost:5206/api/users";

  Future<List<User>> getUserData() async {
    List<User> data = [];

    final uri = Uri.parse(baseUrl);
    try {
      final response = await http.get(
        uri,
        headers: {"Content-Type": "application/json; charset=UTF-8"},
      );
      if (response.statusCode == 200) {
        final List<dynamic> jsonData = json.decode(response.body);
        data = jsonData.map((json) => User.formJson(json)).toList();
        return data;
      } else {
        return data;
      }
    } catch (e) {
      return data;
    }
  }
}
