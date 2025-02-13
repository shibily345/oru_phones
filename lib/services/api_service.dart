import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:oru_phones/domain/extensions/extensions.dart';
import 'package:oru_phones/domain/models/brands/brand.dart';
import 'package:oru_phones/domain/models/faq_model.dart';
import 'package:oru_phones/domain/models/filter_model.dart';

import '../domain/models/product.dart';

class ApiService {
  final String baseUrl = '40.90.224.241:5000'; // Base API URL

  /// Fetch products with optional filters
  Future<List<Product>> getProducts({Map<String, dynamic>? filters}) async {
    final Uri uri = Uri.http(baseUrl, '/filter');
    final Map<String, dynamic> body = {
      "filter": filters ?? {} // Default to empty filter
    };
    "  theees *****************************${jsonEncode(body)}".dp;

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

  //! Get Filters

  Future<FilterModel?> fetchFilters() async {
    "fetching Filter".dp;
    final url = Uri.http(
        baseUrl, "/showSearchFilters"); // 🔹 Replace with actual API URL

    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        "Got dataass ${response.body}";

        final jsonResponse = jsonDecode(response.body) as Map<String, dynamic>;

        return FilterModel.fromJson(jsonResponse);
      } else {
        "Failed to load data: ${response.statusCode}".dp;
        return null;
      }
    } catch (e) {
      print("Error fetching filters: $e");
      throw Exception(e);
    }
  }

  //! FAQ

  Future<List<FAQ>> fetchFAQs() async {
    try {
      final response = await http.get(Uri.http(baseUrl, "/faq"));

      if (response.statusCode == 200) {
        final Map<String, dynamic> data = json.decode(response.body);
        "${response.statusCode}".dp;
        // "$data got faqssssssssssss".dp;

        return FAQResponse.fromJson(data).faqs;
      } else {
        throw Exception("Failed to load FAQs: ${response.statusCode}");
      }
    } catch (e) {
      throw Exception("Error fetching FAQs: $e");
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
