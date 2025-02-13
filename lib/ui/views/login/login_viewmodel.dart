import 'package:flutter/material.dart';
import 'package:oru_phones/app/app.bottomsheets.dart';
import 'package:oru_phones/app/app.locator.dart';
import 'package:oru_phones/app/app.router.dart';
import 'package:oru_phones/domain/extensions/extensions.dart';
import 'package:oru_phones/services/authentication_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class LoginViewModel extends FormViewModel {
  final _bottomSheetService = locator<BottomSheetService>();
  final _authService = locator<AuthenticationService>();
  final _navigationService = locator<NavigationService>();

  void showBottomSheet() {
    _bottomSheetService.showCustomSheet(
      variant: BottomSheetType.notice,
      title: "ksHomeBottomSheetTitle",
      description: "ksHomeBottomSheetDescription",
    );
  }

  final PageController pageController = PageController(initialPage: 0);
  int _currentPage = 0;
  bool? _accepted = false;
  bool? get aceepted => _accepted;
  bool? _validOtp = false;
  bool? get validatedOtp => _validOtp;

  void acceptTnC(bool? value) {
    _accepted = value;
    rebuildUi();
  }

  void sendOtp(int phone) {
    if (aceepted!) {
      _authService.sendOtpRequest(phone);
      nextPage();
    } else {}
  }

  void validateOtp(num otp, num phone) {
    _authService.validateOtp(phone, otp);
    _validOtp = true;
    // nextPage();
  }

  void updateName(String name) async {
    "$name updating".dp;
    debugPrint("updating");
    String msg = await _authService.updateName(name);
    if (msg == "success") {
      _navigationService.replaceWithHomeView();
    }
    // _validOtp = true;
    // nextPage();
  }

  void checkLogin() {
    _authService.checkLoginStatus();
    if (_authService.isLoggedin && _authService.user!.userName.isEmpty) {
      nextPage();
    } else if (_authService.isLoggedin) {
      debugPrint(_authService.user!.userName);
      _navigationService.replaceWithHomeView();
    }
  }

  void nextPage() {
    if (_currentPage < 2) {
      _currentPage++;
      pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
      rebuildUi();
    }
  }

  String? numberValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a number';
    }
    final number = num.tryParse(value);
    if (number == null) {
      return 'Please enter a valid number';
    }
    if (number < 0) {
      return 'Number cannot be negative';
    }
    return null;
  }

  void previousPage() {
    if (_currentPage > 0) {
      _currentPage--;
      pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
      rebuildUi();
    }
  }
}
