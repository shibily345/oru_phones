import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
class Product with _$Product {
  const factory Product({
    @JsonKey(name: "_id") required String id,
    required String deviceCondition,
    required String listedBy,
    required String deviceStorage,
    @Default([]) List<ProductImage> images,
    @JsonKey(defaultValue: null) DefaultImage? defaultImage,
    required String listingState,
    required String listingLocation,
    required String listingLocality,
    required String listingPrice,
    required String make,
    required String marketingName,
    required bool openForNegotiation,
    @Default(false) bool verified,
    required String listingId,
    required String status,
    @Default("") String verifiedDate,
    required String listingDate,
    required String deviceRam,
    required String warranty,
    @Default(0) int originalPrice,
    @Default(0) int discountedPrice,
    required String imagePath,
    required String createdAt,
    required String updatedAt,
    ProductLocation? location,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}

@freezed
class ProductImage with _$ProductImage {
  const factory ProductImage({
    @Default("") String thumbImage,
    @Default("") String fullImage,
    @Default("") String isVarified,
    @Default("") String option,
    @JsonKey(name: "_id") required String id,
  }) = _ProductImage;

  factory ProductImage.fromJson(Map<String, dynamic> json) =>
      _$ProductImageFromJson(json);
}

@freezed
class DefaultImage with _$DefaultImage {
  const factory DefaultImage({
    required String fullImage,
    @JsonKey(name: "_id") required String id,
  }) = _DefaultImage;

  factory DefaultImage.fromJson(Map<String, dynamic> json) =>
      _$DefaultImageFromJson(json);
}

@freezed
class ProductLocation with _$ProductLocation {
  const factory ProductLocation({
    required String type,
    required List<double> coordinates,
    @JsonKey(name: "_id") required String id,
  }) = _ProductLocation;

  factory ProductLocation.fromJson(Map<String, dynamic> json) =>
      _$ProductLocationFromJson(json);
}
