import 'package:flutter/material.dart';
import 'package:oru_phones/app/app.bottomsheets.dart';
import 'package:oru_phones/app/app.dialogs.dart';
import 'package:oru_phones/app/app.locator.dart';
import 'package:oru_phones/app/app.router.dart';
import 'package:oru_phones/domain/models/faq_model.dart';
import 'package:oru_phones/domain/models/product.dart';
import 'package:oru_phones/domain/models/user_model.dart';
import 'package:oru_phones/services/authentication_service.dart';
import 'package:oru_phones/services/faqs_service.dart';
import 'package:oru_phones/services/products_service.dart';
import 'package:oru_phones/ui/common/app_strings.dart';
import 'package:oru_phones/ui/views/products_page/products_page_viewmodel.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends FormViewModel {
  final productVm = locator<ProductsPageViewModel>();
  final _dialogService = locator<DialogService>();
  final _bottomSheetService = locator<BottomSheetService>();
  final _navigationService = locator<NavigationService>();
  final _authServices = locator<AuthenticationService>();

  final List<Product> _products = locator<ProductsService>().products;
  final List<FAQ> _faqs = locator<FaqsService>().faqs;
  User get user => _authServices.user!;
  List<Product> get products => _products;
  List<FAQ> get faqs => _faqs;
  bool filterApplyed = false;
  bool sortApplyed = false;
  bool isExpanded = false;
  int? expandedIndex;

  final brands = locator<ProductsService>().brands;
  String get counterLabel => 'Counter is: $_counter';
  int _currentIndex = 0;
  int get currentIndex => _currentIndex;
  bool get isLoggedin => _authServices.isLoggedin;
  final List<String> options = [
    "Sell Used Phones",
    "Buy Used Phones",
    "Compare Prices",
    "My Profile",
    "My Listings",
    "Services",
    "New",
    "Register your Store",
    "Get the App"
  ];
  final List<String> images = [
    "assets/images/Property 1=Banner 1.png",
    "assets/images/Property 1=Banner 2.png",
    "assets/images/Property 1=Banner 3.png",
    "assets/images/Property 1=Banner 4.png",
    "assets/images/Property 1=Banner 5.png",
  ];
  final List<Map<String, dynamic>> items = [
    {"icon": Icons.shopping_cart, "label": "How to Buy"},
    {"icon": Icons.attach_money, "label": "How to Sell"},
    {"icon": Icons.question_answer, "label": "FAQs"},
    {"icon": Icons.info, "label": "About Us"},
    {"icon": Icons.privacy_tip, "label": "Privacy Policy"},
    {"icon": Icons.assignment_return, "label": "Return Policy"},
  ];

  final List<Map<String, String>> menuItems = [
    {
      "title": "Sell Used Phones",
      "image": "assets/images/icons/file 1.png",
      "route": "/sell"
    },
    {
      "title": "Buy Used Phones",
      "image": "assets/images/icons/file 2.png",
      "route": "/buy"
    },
    {
      "title": "Compare Prices",
      "image": "assets/images/icons/image-1.png",
      "route": "/compare"
    },
    {
      "title": "My Profile",
      "image": "assets/images/icons/image-2.png",
      "route": "/profile"
    },
    {
      "title": "My Listings",
      "image": "assets/images/icons/image-3.png",
      "route": "/listings"
    },
    {
      "title": "Services",
      "image": "assets/images/icons/image-4.png",
      "route": "/services"
    },
    {
      "title": "Register Your Store",
      "image": "assets/images/icons/image-5.png",
      "route": "/register-store"
    },
    {
      "title": "Get the App",
      "image": "assets/images/icons/image-6.png",
      "route": "/get-app"
    },
  ];
  final int _counter = 0;
  void updateIndex(int index) {
    _currentIndex = index;
    rebuildUi();
  }

  void expandFaq(int index) {
    expandedIndex = expandedIndex == index ? null : index;
    isExpanded = !isExpanded;
    rebuildUi();
  }

  void showDialog() {
    _dialogService.showCustomDialog(
      variant: DialogType.infoAlert,
      title: 'Stacked Rocks!',
      description: 'Give stacked $_counter stars on Github',
    );
  }

  void goToLogin() {
    _navigationService.navigateToLoginView();
  }

  void goToProducts() {
    _navigationService.navigateToProductsPageView();
  }

  void logout() {
    _authServices.logout();
    _navigationService.replaceWithStartupView();
  }

  void showLoginBottomSheet() {
    _bottomSheetService.showCustomSheet(
      variant: BottomSheetType.login,
      title: ksHomeBottomSheetTitle,
      description: ksHomeBottomSheetDescription,
    );
  }

  void showFilterBottomSheet() {
    _bottomSheetService.showCustomSheet(
      variant: BottomSheetType.filters,
      title: "home",
      description: ksHomeBottomSheetDescription,
    );
  }

  void showSortBottomSheet() {
    _bottomSheetService.showCustomSheet(
      variant: BottomSheetType.sort,
      title: "home",
      description: ksHomeBottomSheetDescription,
    );
  }
}
