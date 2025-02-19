import 'package:flutter/material.dart';
import 'package:oru_phones/app/app.locator.dart';
import 'package:oru_phones/app/app.router.dart';
import 'package:oru_phones/themes/extensions/extensions.dart';
import 'package:oru_phones/services/authentication_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class LoginSheetModel extends FormViewModel {
  final _bottomSheetService = locator<BottomSheetService>();

  final _authService = locator<AuthenticationService>();
  final _navigationService = locator<NavigationService>();
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
    setBusy(true);
    if (aceepted!) {
      _authService.sendOtpRequest(phone);
    } else {}
    nextPage();
    setBusy(false);
  }

  void validateOtp(num otp, num phone) {
    setBusy(true);
    _authService.validateOtp(phone, otp).then((_) {
      setBusy(false);
      _validOtp = true;
    });
  }

  void updateName(String name) async {
    setBusy(true);
    "$name updating".dp;
    debugPrint("updating");
    String msg = await _authService.updateName(name);
    if (msg == "success") {
      _bottomSheetService.completeSheet(SheetResponse());
    }
    setBusy(false);
  }

  void checkLogin() {
    setBusy(true);
    _authService.checkLoginStatus();
    if (_authService.isLoggedin && _authService.user!.userName.isEmpty) {
      nextPage();
    } else if (_authService.isLoggedin) {
      debugPrint(_authService.user!.userName);
      _navigationService.replaceWithHomeView();
    }
    setBusy(false);
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
