import 'package:flutter/material.dart';
import 'package:oru_phones/app/app.bottomsheets.dart';
import 'package:oru_phones/app/app.locator.dart';
import 'package:oru_phones/app/app.router.dart';
import 'package:oru_phones/themes/extensions/extensions.dart';
import 'package:oru_phones/services/authentication_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class LoginViewModel extends FormViewModel {
  final _bottomSheetService = locator<BottomSheetService>();
  final _authService = locator<AuthenticationService>();
  final _navigationService = locator<NavigationService>();

  final PageController pageController = PageController(initialPage: 0);
  int currentPage = 0;
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
      _navigationService.replaceWithHomeView();
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

  void showBottomSheet() {
    _bottomSheetService.showCustomSheet(
      variant: BottomSheetType.notice,
      title: "ksHomeBottomSheetTitle",
      description: "ksHomeBottomSheetDescription",
    );
  }

  void nextPage() {
    if (currentPage < 2) {
      currentPage++;
      pageController.animateToPage(
        currentPage,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
      rebuildUi();
    }
  }

  void previousPage() {
    if (currentPage > 0) {
      currentPage--;
      pageController.animateToPage(
        currentPage,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
      rebuildUi();
    }
  }
}
