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
    @Default([]) List<ProductImage> images, // ✅ Avoid null list errors
    @JsonKey(defaultValue: null)
    DefaultImage? defaultImage, // ✅ Nullable object

    required String listingState,
    required String listingLocation,
    required String listingLocality,
    required String listingPrice,
    required String make,
    required String marketingName,
    required bool openForNegotiation,
    required bool verified,
    required String listingId,
    required String status,
    required String verifiedDate,
    required String listingDate,
    required String deviceRam,
    required String warranty,
    @Default(0) int originalPrice, // ✅ Avoid null cast to int error
    @Default(0) int discountedPrice, // ✅ Avoid null cast to int error

    required String imagePath,
    required String createdAt,
    required String updatedAt,
    ProductLocation? location, // ✅ Allow `null` Location object
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}

@freezed
class ProductImage with _$ProductImage {
  const factory ProductImage({
    required String thumbImage,
    required String fullImage,
    required String isVarified,
    required String option,
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
