import 'package:freezed_annotation/freezed_annotation.dart';

part 'brand.freezed.dart';
part 'brand.g.dart';

@freezed
class Brand with _$Brand {
  const factory Brand({
    @Default("Other") String make,
    @Default("non") String imagePath,
  }) = _Brand;

  factory Brand.fromJson(Map<String, dynamic> json) => _$BrandFromJson(json);
}

@freezed
class BrandResponse with _$BrandResponse {
  const factory BrandResponse({
    required String reason,
    required int statusCode,
    required String status,
    @JsonKey(name: "dataObject") required List<Brand> brands,
  }) = _BrandResponse;

  factory BrandResponse.fromJson(Map<String, dynamic> json) =>
      _$BrandResponseFromJson(json);
}
