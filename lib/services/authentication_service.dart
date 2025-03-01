import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:oru_phones/app/app.locator.dart';
import 'package:oru_phones/themes/extensions/extensions.dart';
import 'package:oru_phones/domain/models/user_model.dart';
import 'package:oru_phones/services/api_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthenticationService {
  final _apiService = locator<ApiService>();

  bool _isLoggedin = false;
  bool get isLoggedin => _isLoggedin;
  UserModel? _user;
  User? get user => _user!.user;
  List<dynamic> _likedProducts = [];
  List<dynamic>? get likedProducts => _likedProducts;

  final String baseUrl = '40.90.224.241:5000';

  Future<OtpResponse> sendOtpRequest(int phone) async {
    try {
      OtpResponse otpResponse = await _apiService.sendOtp(91, phone);
      "OTP sent to: ${otpResponse.mobileNumber}".dp;
      return otpResponse;
    } catch (error) {
      "Error: $error".dp;

      throw Exception(error);
    }
  }

  Future<void> validateOtp(num mobileNumber, num otp) async {
    final url = Uri.http(baseUrl, "/login/otpValidate");

    final Map<String, dynamic> requestBody = {
      "countryCode": 91,
      "mobileNumber": mobileNumber,
      "otp": otp
    };

    final response = await http.post(
      url,
      headers: {"Content-Type": "application/json"},
      body: jsonEncode(requestBody),
    );

    if (response.statusCode == 200) {
      // Extract the response JSON
      final jsonResponse = jsonDecode(response.body);
      "OTP Validation Successful: $jsonResponse".dp;

      // Extract cookie from response headers
      String? cookie = response.headers['set-cookie'];
      if (cookie != null) {
        await _saveCookie(cookie);
        "Cookie saved: $cookie".dp;
      }
    } else {
      throw Exception("Failed to validate OTP: ${response.body}");
    }
  }

  Future<void> checkLoginStatus() async {
    final prefs = await SharedPreferences.getInstance();
    final authCookie = prefs.getString('auth_cookie');
    // final csrfToken = prefs.getString('csrfToken');

    if (authCookie == null) {
      'No session found, user is not logged in.'.dp;
      return;
    }

    final response = await http.get(
      Uri.http(baseUrl, "/isLoggedIn"),
      headers: {
        'Cookie': authCookie,
        'Content-Type': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      if (data['isLoggedIn'] == true) {
        _isLoggedin = true;
        _user = UserModel.fromJson(data);
        if (_user != null) {
          "${_user!.user.userName} .......................".dp;
          _saveCrsfToken(_user!.csrfToken);
          _likedProducts = _user!.user.favListings;
          "$likedProducts".dp;
          "saved CrfToken ${_user!.csrfToken}    $authCookie".dp;
        }
      }
    }

    // return null;
  }

  Future<String> updateName(String name) async {
    final prefs = await SharedPreferences.getInstance();
    final csrfToken = prefs.getString('csrfToken');
    final authCookie = prefs.getString('auth_cookie');

    // final csrfToken = prefs.getString('csrfToken');

    if (csrfToken == null) {
      'No session found, user is not logged in.'.dp;
      return "Not logged in";
    }
    final Map<String, dynamic> requestBody = {
      "countryCode": 91,
      "userName": name,
    };
    try {
      final response = await http.post(
        Uri.http(baseUrl, "/update"),
        body: jsonEncode(requestBody),
        headers: {
          'X-Csrf-Token': csrfToken,
          'Cookie': authCookie!,
          'Content-Type': 'application/json',
        },
      );

      if (response.statusCode == 200) {
        // final data = jsonDecode(response.body);

        _isLoggedin = true;
        "Successfully Updated The Name".dp;

        return "success";
      } else {
        "${response.statusCode}".dp;
        return "failed";
      }
    } catch (e) {
      throw Exception(e);
    }

    // return null;
  }

  Future<String> updateFavs(String id) async {
    final prefs = await SharedPreferences.getInstance();
    final csrfToken = prefs.getString('csrfToken');
    final authCookie = prefs.getString('auth_cookie');

    // final csrfToken = prefs.getString('csrfToken');

    if (csrfToken == null) {
      'No session found, user is not logged in.'.dp;
      return "Not logged in";
    }
    final Map<String, dynamic> requestBody = {"listingId": id, "isFav": true};
    try {
      final response = await http.post(
        Uri.http(baseUrl, "/favs"),
        body: jsonEncode(requestBody),
        headers: {
          'X-Csrf-Token': csrfToken,
          'Cookie': authCookie!,
          'Content-Type': 'application/json',
        },
      );

      if (response.statusCode == 200) {
        // final data = jsonDecode(response.body);

        _isLoggedin = true;
        "Successfully Updated Faverate".dp;

        return "success";
      } else {
        "${response.statusCode}".dp;
        return "failed";
      }
    } catch (e) {
      throw Exception(e);
    }

    // return null;
  }

  // Save Cookie to SharedPreferences
  Future<void> _saveCookie(
    String cookie,
  ) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('auth_cookie', cookie);
  }

  Future<void> _saveCrsfToken(
    String csrfToken,
  ) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('csrfToken', csrfToken);
  }

  Future<void> logout() async {
    final prefs = await SharedPreferences.getInstance();
    final csrfToken = prefs.getString('csrfToken');
    final authCookie = prefs.getString('auth_cookie');
    try {
      final response = await http.get(
        Uri.http(baseUrl, "/logout"),
        headers: {
          'X-Csrf-Token': csrfToken!,
          'Cookie': authCookie!,
          'Content-Type': 'application/json',
        },
      );

      if (response.statusCode == 200) {
        // final data = jsonDecode(response.body);

        _isLoggedin = false;
        "Successfully LogedOut".dp;
        await prefs.remove('csrfToken');
        await prefs.remove('auth_cookie');
      } else {
        "${response.statusCode}".dp;
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}
