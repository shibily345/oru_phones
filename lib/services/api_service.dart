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

  //!- Authentication

  Future<OtpResponse> sendOtp(int countryCode, int mobileNumber) async {
    final url =
        Uri.http(baseUrl, "/login/otpCreate"); // Replace with actual API URL

    final Map<String, dynamic> requestBody = {
      "countryCode": countryCode,
      "mobileNumber": mobileNumber
    };

    final response = await http.post(
      url,
      headers: {"Content-Type": "application/json"},
      body: jsonEncode(requestBody),
    );

    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);
      return OtpResponse.fromJson(jsonResponse);
    } else {
      throw Exception("Failed to send OTP: ${response.body}");
    }
  }
}

class OtpResponse {
  final String reason;
  final String status;
  final String mobileNumber;

  OtpResponse(
      {required this.reason, required this.status, required this.mobileNumber});

  factory OtpResponse.fromJson(Map<String, dynamic> json) {
    return OtpResponse(
      reason: json["reason"] ?? "",
      status: json["status"] ?? "",
      mobileNumber: json["dataObject"]["mobileNumber"] ?? "",
    );
  }
}
