import 'package:flutter/material.dart';
import 'package:oru_phones/app/app.locator.dart';
import 'package:oru_phones/domain/models/brands/brand.dart';
import 'package:oru_phones/domain/models/product.dart';
import 'package:stacked/stacked.dart';

import 'api_service.dart';

class ProductsService with ListenableServiceMixin {
  List<Product> _products = [];
  List<Product> get products => _products;
  List<Brand> _brands = [];
  List<Brand> get brands => _brands;
  final _apiService = locator<ApiService>();

  Future<List<Product>> getProducts() async {
    _products = await _apiService.getProducts();
    // debugPrint("Got It *******************  ${newProducts.nonNulls}");
    return _products;
  }

  Future<List<Brand>> getBrands() async {
    _brands = await _apiService.getBrands();
    debugPrint("Got It *******************  ${_brands.nonNulls}");
    return _brands;
  }
}
