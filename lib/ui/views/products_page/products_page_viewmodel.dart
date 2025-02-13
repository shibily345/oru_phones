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
  static final ProductsPageViewModel _instance =
      ProductsPageViewModel._internal();
  factory ProductsPageViewModel() => _instance;
  ProductsPageViewModel._internal();

  final _productService = locator<ProductsService>();
  SelectedFilterModel _filter = SelectedFilterModel();
  SelectedFilterModel get filter => _filter;
  final _dialogService = locator<DialogService>();
  final _bottomSheetService = locator<BottomSheetService>();
  final _navigationService = locator<NavigationService>();
  final _authServices = locator<AuthenticationService>();

  List<Product> _products = locator<ProductsService>().products;

  List<Product> get products => _products;
  bool filterApplyed = false;
  bool sortApplyed = false;
  final List<Product> _productFiltered = [];
  List<Product> get productFiltered => _productFiltered;
  final ScrollController scrollController = ScrollController();
  int _currentPage = 1;
  final int _perPage = 10;

  void initScroll() {
    scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (scrollController.position.pixels ==
            scrollController.position.maxScrollExtent &&
        !isBusy) {
      _loadMoreProducts();
    }
  }

  Future<void> _loadMoreProducts() async {
    setBusy(true);

    await Future.delayed(const Duration(seconds: 2)); // Simulating API Call

    _currentPage++;
    _products.addAll(await _productService.getProductsWithFilters(
        _filter.copyWith(page: _currentPage), null));
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
    // _products = _productFiltered;
    rebuildUi();
    notifyListeners();
    setBusy(false);
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
