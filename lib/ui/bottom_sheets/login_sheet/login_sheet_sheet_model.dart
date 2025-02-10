import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class LoginSheetModel extends BaseViewModel {
  final PageController pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  // final List<Widget> pages = [
  //   const PageWidget(text: "Page 1", color: Colors.red),
  //   const PageWidget(text: "Page 2", color: Colors.green),
  //   const PageWidget(text: "Page 3", color: Colors.blue),
  // ];

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
