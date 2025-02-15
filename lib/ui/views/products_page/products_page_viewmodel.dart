import 'package:flutter/material.dart';
import 'package:oru_phones/app/app.bottomsheets.dart';
import 'package:oru_phones/app/app.locator.dart';
import 'package:oru_phones/domain/extensions/extensions.dart';
import 'package:oru_phones/domain/models/product.dart';
import 'package:oru_phones/domain/models/selected_filter_model.dart';
import 'package:oru_phones/services/authentication_service.dart';
import 'package:oru_phones/services/products_service.dart';
import 'package:oru_phones/ui/common/app_strings.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class ProductsPageViewModel extends BaseViewModel {
  final ScrollController scrollController = ScrollController();

  ProductsPageViewModel() {
    scrollController.addListener(_onScroll);
  }

  final _productService = locator<ProductsService>();
  SelectedFilterModel _filter = SelectedFilterModel();
  SelectedFilterModel get filter => _filter;
  final _dialogService = locator<DialogService>();
  final _bottomSheetService = locator<BottomSheetService>();
  final _navigationService = locator<NavigationService>();
  final _authServices = locator<AuthenticationService>();
  List<dynamic> _likedPs = [];
  List<dynamic> get likedPs => _likedPs;
  List<Product> _products = locator<ProductsService>().products;

  List<Product> get products => _products;
  bool filterApplyed = false;
  bool sortApplyed = false;
  bool isloading = false;
  final List<Product> _productFiltered = [];
  List<Product> get productFiltered => _productFiltered;

  int _currentPage = 1;

  void initScroll() {
    "check working".dp;

    scrollController.addListener(_onScroll);
  }

  void initLikedp() {
    var liked = _authServices.likedProducts ?? [];
    _likedPs = List.from(liked);
  }

  void _onScroll() {
    if (scrollController.position.pixels >=
        scrollController.position.maxScrollExtent - 100) {
      print("🔄 Scrolled to Bottom - Fetching More Data...");
      _loadMoreProducts();
    }
  }

  bool containsValue(dynamic value) {
    return _likedPs.contains(value);
  }

  Future<void> _loadMoreProducts() async {
    "Loading More......".dp;
    setBusy(true);

    await Future.delayed(const Duration(seconds: 2));

    _currentPage++;
    _products.addAll(await _productService.getProductsWithFilters(
        _filter.copyWith(page: _currentPage), null));
    rebuildUi();
    setBusy(false);
  }

  final brands = locator<ProductsService>().brands;
  final int _currentIndex = 0;
  int get currentIndex => _currentIndex;
  bool get isLoggedin => _authServices.isLoggedin;

  void rebuildWithFilter(
    SelectedFilterModel filter,
  ) async {
    _filter = filter;
    _currentPage = 1;
    setBusy(true);
    _products = await _productService.getProductsWithFilters(_filter, null);
    "$productFiltered  al +++++++++++++++++++++++++++++".dp;
    filterApplyed = true;
    if (filterApplyed) {
      "successfully aplied ".dp;
    }

    rebuildUi();
    notifyListeners();
    setBusy(false);
  }

  Future<void> toggleLike(String productId) async {
    if (_likedPs.contains(productId)) {
      _likedPs.remove(productId);
    } else {
      _likedPs.add(productId);
    }

    notifyListeners();

    try {
      await _authServices.updateFavs(productId);
      _authServices.checkLoginStatus();
    } catch (e) {
      print("Error updating like status: $e");
    }
  }

  void showLoginBottomSheet() {
    _bottomSheetService.showCustomSheet(
      variant: BottomSheetType.login,
      title: ksHomeBottomSheetTitle,
      description: ksHomeBottomSheetDescription,
    );
  }

  void rebuildWithSort(Map<String, dynamic> sort) async {
    setBusy(true);
    _currentPage = 1;
    setBusy(true);
    _products = await _productService.getProductsWithFilters(_filter, sort);
    "$productFiltered  al +++++++++++++++++++++++++++++".dp;
    sortApplyed = true;
    if (sortApplyed) {
      "successfully aplied Sort ".dp;
    }
    rebuildUi();
    notifyListeners();
    setBusy(false);
  }

  void showFilterBottomSheet() {
    _bottomSheetService.showCustomSheet(
      data: _filter,
      variant: BottomSheetType.filters,
      title: ksHomeBottomSheetTitle,
      description: ksHomeBottomSheetDescription,
    );
  }

  void showSortBottomSheet() {
    _bottomSheetService.showCustomSheet(
      data: _filter.sort,
      variant: BottomSheetType.sort,
      title: ksHomeBottomSheetTitle,
      description: ksHomeBottomSheetDescription,
    );
  }
}
