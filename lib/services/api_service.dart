import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiService {
  static const String baseUrl =
      "http://10.0.2.2:3000/api"; // Change to your backend URL

  // Register User
  static Future<Map<String, dynamic>> registerUser(String name,
      String email,
      String phone,
      String password,
      String role,) async {
    final url = Uri.parse('$baseUrl/register');

    final response = await http.post(
      url,
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({
        "name": name,
        "email": email,
        "phone": phone,
        "password": password,
        "role": role,
      }),
    );

    return jsonDecode(response.body);
  }

  // Login User
  static Future<Map<String, dynamic>> loginUser(String email,
      String password,) async {
    final url = Uri.parse('$baseUrl/login');
    print('API request data  $url' + email + " and " + password);
    final response = await http.post(
      url,
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({"email": email, "password": password}),
    );

    return jsonDecode(response.body);
  }
}
