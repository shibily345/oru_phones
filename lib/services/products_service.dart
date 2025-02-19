import 'package:oru_phones/app/app.locator.dart';
import 'package:oru_phones/domain/models/brands/brand.dart';
import 'package:oru_phones/domain/models/product.dart';
import 'package:oru_phones/domain/models/selected_filter_model.dart';
import 'package:stacked/stacked.dart';

import 'api_service.dart';

class ProductsService with ListenableServiceMixin {
  ProductsService() {
    listenToReactiveValues([_products]);
  }
  List<Product> _products = [];
  List<Product> get products => _products;
  List<Brand> _brands = [];
  List<Brand> get brands => _brands;
  final _apiService = locator<ApiService>();

  Future<List<Product>> getProducts() async {
    _products = await _apiService.getProducts();
    return _products;
  }

  Future<List<Product>> getProductsWithFilters(
      SelectedFilterModel filter, Map<String, dynamic>? sort) async {
    _products = await _apiService.getProducts(
        filters: filter.copyWith(sort: sort ?? {}).toFilteredJson());
    notifyListeners();
    return _products;
  }

  // Future<List<Product>> getProductsWithSorting(
  //     Map<String, dynamic> sort) async {
  //   _products = await _apiService.getProducts(filters: sort);
  //   notifyListeners();
  //   return _products;
  // }

  Future<List<Brand>> getBrands() async {
    _brands = await _apiService.getBrands();
    return _brands;
  }
}
