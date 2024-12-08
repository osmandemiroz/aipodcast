import 'package:flutter_podcast_app/constants/api_constants.dart';
import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl = ApiConstants.baseUrl; // Replace with your backend URL

  Future<http.Response> fetchData(String endpoint) async {
    final url = Uri.parse('$baseUrl/$endpoint');
    final response = await http.get(url);
    return response;
  }

  Future<http.Response> postData(
    String endpoint,
    Map<String, dynamic> data,
  ) async {
    final url = Uri.parse('$baseUrl/$endpoint');
    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: data,
    );
    return response;
  }
}
