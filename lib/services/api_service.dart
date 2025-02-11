import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:oru_phones/domain/models/brands/brand.dart';

import '../domain/models/product.dart';

class ApiService {
  final String baseUrl = '40.90.224.241:5000'; // Base API URL

  /// Fetch products with optional filters
  Future<List<Product>> getProducts({Map<String, dynamic>? filters}) async {
    final Uri uri = Uri.http(baseUrl, '/filter'); // Adjust API path if needed
    final Map<String, dynamic> body = {
      "filter": filters ?? {} // Default to empty filter
    };

    final response = await http.post(
      uri,
      headers: {
        "Content-Type": "application/json",
      },
      body: jsonEncode(body),
    );

    if (response.statusCode < 400) {
      final responseBodyAsMap = jsonDecode(response.body);
      final productList = responseBodyAsMap['data']['data'] as List;
      return productList.map((json) => Product.fromJson(json)).toList();
    }

    throw Exception('Response Code: ${response.statusCode} - ${response.body}');
  }

  Future<List<Brand>> getBrands() async {
    final url = Uri.http(baseUrl, "/makeWithImages"); // Update URL

    final response = await http.get(url);

    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body) as Map<String, dynamic>;
      final brandResponse = BrandResponse.fromJson(jsonResponse);
      return brandResponse.brands;
    } else {
      throw Exception('Failed to load brands: ${response.statusCode}');
    }
  }
}
