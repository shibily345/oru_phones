// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  @JsonKey(name: "_id")
  String get id => throw _privateConstructorUsedError;
  String get deviceCondition => throw _privateConstructorUsedError;
  String get listedBy => throw _privateConstructorUsedError;
  String get deviceStorage => throw _privateConstructorUsedError;
  List<ProductImage> get images =>
      throw _privateConstructorUsedError; // ✅ Avoid null list errors
  @JsonKey(defaultValue: null)
  DefaultImage? get defaultImage =>
      throw _privateConstructorUsedError; // ✅ Nullable object
  String get listingState => throw _privateConstructorUsedError;
  String get listingLocation => throw _privateConstructorUsedError;
  String get listingLocality => throw _privateConstructorUsedError;
  String get listingPrice => throw _privateConstructorUsedError;
  String get make => throw _privateConstructorUsedError;
  String get marketingName => throw _privateConstructorUsedError;
  bool get openForNegotiation => throw _privateConstructorUsedError;
  bool get verified => throw _privateConstructorUsedError;
  String get listingId => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get verifiedDate => throw _privateConstructorUsedError;
  String get listingDate => throw _privateConstructorUsedError;
  String get deviceRam => throw _privateConstructorUsedError;
  String get warranty => throw _privateConstructorUsedError;
  int get originalPrice =>
      throw _privateConstructorUsedError; // ✅ Avoid null cast to int error
  int get discountedPrice =>
      throw _privateConstructorUsedError; // ✅ Avoid null cast to int error
  String get imagePath => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;
  ProductLocation? get location => throw _privateConstructorUsedError;

  /// Serializes this Product to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String id,
      String deviceCondition,
      String listedBy,
      String deviceStorage,
      List<ProductImage> images,
      @JsonKey(defaultValue: null) DefaultImage? defaultImage,
      String listingState,
      String listingLocation,
      String listingLocality,
      String listingPrice,
      String make,
      String marketingName,
      bool openForNegotiation,
      bool verified,
      String listingId,
      String status,
      String verifiedDate,
      String listingDate,
      String deviceRam,
      String warranty,
      int originalPrice,
      int discountedPrice,
      String imagePath,
      String createdAt,
      String updatedAt,
      ProductLocation? location});

  $DefaultImageCopyWith<$Res>? get defaultImage;
  $ProductLocationCopyWith<$Res>? get location;
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? deviceCondition = null,
    Object? listedBy = null,
    Object? deviceStorage = null,
    Object? images = null,
    Object? defaultImage = freezed,
    Object? listingState = null,
    Object? listingLocation = null,
    Object? listingLocality = null,
    Object? listingPrice = null,
    Object? make = null,
    Object? marketingName = null,
    Object? openForNegotiation = null,
    Object? verified = null,
    Object? listingId = null,
    Object? status = null,
    Object? verifiedDate = null,
    Object? listingDate = null,
    Object? deviceRam = null,
    Object? warranty = null,
    Object? originalPrice = null,
    Object? discountedPrice = null,
    Object? imagePath = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? location = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      deviceCondition: null == deviceCondition
          ? _value.deviceCondition
          : deviceCondition // ignore: cast_nullable_to_non_nullable
              as String,
      listedBy: null == listedBy
          ? _value.listedBy
          : listedBy // ignore: cast_nullable_to_non_nullable
              as String,
      deviceStorage: null == deviceStorage
          ? _value.deviceStorage
          : deviceStorage // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ProductImage>,
      defaultImage: freezed == defaultImage
          ? _value.defaultImage
          : defaultImage // ignore: cast_nullable_to_non_nullable
              as DefaultImage?,
      listingState: null == listingState
          ? _value.listingState
          : listingState // ignore: cast_nullable_to_non_nullable
              as String,
      listingLocation: null == listingLocation
          ? _value.listingLocation
          : listingLocation // ignore: cast_nullable_to_non_nullable
              as String,
      listingLocality: null == listingLocality
          ? _value.listingLocality
          : listingLocality // ignore: cast_nullable_to_non_nullable
              as String,
      listingPrice: null == listingPrice
          ? _value.listingPrice
          : listingPrice // ignore: cast_nullable_to_non_nullable
              as String,
      make: null == make
          ? _value.make
          : make // ignore: cast_nullable_to_non_nullable
              as String,
      marketingName: null == marketingName
          ? _value.marketingName
          : marketingName // ignore: cast_nullable_to_non_nullable
              as String,
      openForNegotiation: null == openForNegotiation
          ? _value.openForNegotiation
          : openForNegotiation // ignore: cast_nullable_to_non_nullable
              as bool,
      verified: null == verified
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool,
      listingId: null == listingId
          ? _value.listingId
          : listingId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      verifiedDate: null == verifiedDate
          ? _value.verifiedDate
          : verifiedDate // ignore: cast_nullable_to_non_nullable
              as String,
      listingDate: null == listingDate
          ? _value.listingDate
          : listingDate // ignore: cast_nullable_to_non_nullable
              as String,
      deviceRam: null == deviceRam
          ? _value.deviceRam
          : deviceRam // ignore: cast_nullable_to_non_nullable
              as String,
      warranty: null == warranty
          ? _value.warranty
          : warranty // ignore: cast_nullable_to_non_nullable
              as String,
      originalPrice: null == originalPrice
          ? _value.originalPrice
          : originalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      discountedPrice: null == discountedPrice
          ? _value.discountedPrice
          : discountedPrice // ignore: cast_nullable_to_non_nullable
              as int,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as ProductLocation?,
    ) as $Val);
  }

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DefaultImageCopyWith<$Res>? get defaultImage {
    if (_value.defaultImage == null) {
      return null;
    }

    return $DefaultImageCopyWith<$Res>(_value.defaultImage!, (value) {
      return _then(_value.copyWith(defaultImage: value) as $Val);
    });
  }

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductLocationCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $ProductLocationCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductImplCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$ProductImplCopyWith(
          _$ProductImpl value, $Res Function(_$ProductImpl) then) =
      __$$ProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String id,
      String deviceCondition,
      String listedBy,
      String deviceStorage,
      List<ProductImage> images,
      @JsonKey(defaultValue: null) DefaultImage? defaultImage,
      String listingState,
      String listingLocation,
      String listingLocality,
      String listingPrice,
      String make,
      String marketingName,
      bool openForNegotiation,
      bool verified,
      String listingId,
      String status,
      String verifiedDate,
      String listingDate,
      String deviceRam,
      String warranty,
      int originalPrice,
      int discountedPrice,
      String imagePath,
      String createdAt,
      String updatedAt,
      ProductLocation? location});

  @override
  $DefaultImageCopyWith<$Res>? get defaultImage;
  @override
  $ProductLocationCopyWith<$Res>? get location;
}

/// @nodoc
class __$$ProductImplCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$ProductImpl>
    implements _$$ProductImplCopyWith<$Res> {
  __$$ProductImplCopyWithImpl(
      _$ProductImpl _value, $Res Function(_$ProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? deviceCondition = null,
    Object? listedBy = null,
    Object? deviceStorage = null,
    Object? images = null,
    Object? defaultImage = freezed,
    Object? listingState = null,
    Object? listingLocation = null,
    Object? listingLocality = null,
    Object? listingPrice = null,
    Object? make = null,
    Object? marketingName = null,
    Object? openForNegotiation = null,
    Object? verified = null,
    Object? listingId = null,
    Object? status = null,
    Object? verifiedDate = null,
    Object? listingDate = null,
    Object? deviceRam = null,
    Object? warranty = null,
    Object? originalPrice = null,
    Object? discountedPrice = null,
    Object? imagePath = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? location = freezed,
  }) {
    return _then(_$ProductImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      deviceCondition: null == deviceCondition
          ? _value.deviceCondition
          : deviceCondition // ignore: cast_nullable_to_non_nullable
              as String,
      listedBy: null == listedBy
          ? _value.listedBy
          : listedBy // ignore: cast_nullable_to_non_nullable
              as String,
      deviceStorage: null == deviceStorage
          ? _value.deviceStorage
          : deviceStorage // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ProductImage>,
      defaultImage: freezed == defaultImage
          ? _value.defaultImage
          : defaultImage // ignore: cast_nullable_to_non_nullable
              as DefaultImage?,
      listingState: null == listingState
          ? _value.listingState
          : listingState // ignore: cast_nullable_to_non_nullable
              as String,
      listingLocation: null == listingLocation
          ? _value.listingLocation
          : listingLocation // ignore: cast_nullable_to_non_nullable
              as String,
      listingLocality: null == listingLocality
          ? _value.listingLocality
          : listingLocality // ignore: cast_nullable_to_non_nullable
              as String,
      listingPrice: null == listingPrice
          ? _value.listingPrice
          : listingPrice // ignore: cast_nullable_to_non_nullable
              as String,
      make: null == make
          ? _value.make
          : make // ignore: cast_nullable_to_non_nullable
              as String,
      marketingName: null == marketingName
          ? _value.marketingName
          : marketingName // ignore: cast_nullable_to_non_nullable
              as String,
      openForNegotiation: null == openForNegotiation
          ? _value.openForNegotiation
          : openForNegotiation // ignore: cast_nullable_to_non_nullable
              as bool,
      verified: null == verified
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool,
      listingId: null == listingId
          ? _value.listingId
          : listingId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      verifiedDate: null == verifiedDate
          ? _value.verifiedDate
          : verifiedDate // ignore: cast_nullable_to_non_nullable
              as String,
      listingDate: null == listingDate
          ? _value.listingDate
          : listingDate // ignore: cast_nullable_to_non_nullable
              as String,
      deviceRam: null == deviceRam
          ? _value.deviceRam
          : deviceRam // ignore: cast_nullable_to_non_nullable
              as String,
      warranty: null == warranty
          ? _value.warranty
          : warranty // ignore: cast_nullable_to_non_nullable
              as String,
      originalPrice: null == originalPrice
          ? _value.originalPrice
          : originalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      discountedPrice: null == discountedPrice
          ? _value.discountedPrice
          : discountedPrice // ignore: cast_nullable_to_non_nullable
              as int,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as ProductLocation?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductImpl implements _Product {
  const _$ProductImpl(
      {@JsonKey(name: "_id") required this.id,
      required this.deviceCondition,
      required this.listedBy,
      required this.deviceStorage,
      final List<ProductImage> images = const [],
      @JsonKey(defaultValue: null) this.defaultImage,
      required this.listingState,
      required this.listingLocation,
      required this.listingLocality,
      required this.listingPrice,
      required this.make,
      required this.marketingName,
      required this.openForNegotiation,
      this.verified = false,
      required this.listingId,
      required this.status,
      this.verifiedDate = "",
      required this.listingDate,
      required this.deviceRam,
      required this.warranty,
      this.originalPrice = 0,
      this.discountedPrice = 0,
      required this.imagePath,
      required this.createdAt,
      required this.updatedAt,
      this.location})
      : _images = images;

  factory _$ProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String id;
  @override
  final String deviceCondition;
  @override
  final String listedBy;
  @override
  final String deviceStorage;
  final List<ProductImage> _images;
  @override
  @JsonKey()
  List<ProductImage> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

// ✅ Avoid null list errors
  @override
  @JsonKey(defaultValue: null)
  final DefaultImage? defaultImage;
// ✅ Nullable object
  @override
  final String listingState;
  @override
  final String listingLocation;
  @override
  final String listingLocality;
  @override
  final String listingPrice;
  @override
  final String make;
  @override
  final String marketingName;
  @override
  final bool openForNegotiation;
  @override
  @JsonKey()
  final bool verified;
  @override
  final String listingId;
  @override
  final String status;
  @override
  @JsonKey()
  final String verifiedDate;
  @override
  final String listingDate;
  @override
  final String deviceRam;
  @override
  final String warranty;
  @override
  @JsonKey()
  final int originalPrice;
// ✅ Avoid null cast to int error
  @override
  @JsonKey()
  final int discountedPrice;
// ✅ Avoid null cast to int error
  @override
  final String imagePath;
  @override
  final String createdAt;
  @override
  final String updatedAt;
  @override
  final ProductLocation? location;

  @override
  String toString() {
    return 'Product(id: $id, deviceCondition: $deviceCondition, listedBy: $listedBy, deviceStorage: $deviceStorage, images: $images, defaultImage: $defaultImage, listingState: $listingState, listingLocation: $listingLocation, listingLocality: $listingLocality, listingPrice: $listingPrice, make: $make, marketingName: $marketingName, openForNegotiation: $openForNegotiation, verified: $verified, listingId: $listingId, status: $status, verifiedDate: $verifiedDate, listingDate: $listingDate, deviceRam: $deviceRam, warranty: $warranty, originalPrice: $originalPrice, discountedPrice: $discountedPrice, imagePath: $imagePath, createdAt: $createdAt, updatedAt: $updatedAt, location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.deviceCondition, deviceCondition) ||
                other.deviceCondition == deviceCondition) &&
            (identical(other.listedBy, listedBy) ||
                other.listedBy == listedBy) &&
            (identical(other.deviceStorage, deviceStorage) ||
                other.deviceStorage == deviceStorage) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.defaultImage, defaultImage) ||
                other.defaultImage == defaultImage) &&
            (identical(other.listingState, listingState) ||
                other.listingState == listingState) &&
            (identical(other.listingLocation, listingLocation) ||
                other.listingLocation == listingLocation) &&
            (identical(other.listingLocality, listingLocality) ||
                other.listingLocality == listingLocality) &&
            (identical(other.listingPrice, listingPrice) ||
                other.listingPrice == listingPrice) &&
            (identical(other.make, make) || other.make == make) &&
            (identical(other.marketingName, marketingName) ||
                other.marketingName == marketingName) &&
            (identical(other.openForNegotiation, openForNegotiation) ||
                other.openForNegotiation == openForNegotiation) &&
            (identical(other.verified, verified) ||
                other.verified == verified) &&
            (identical(other.listingId, listingId) ||
                other.listingId == listingId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.verifiedDate, verifiedDate) ||
                other.verifiedDate == verifiedDate) &&
            (identical(other.listingDate, listingDate) ||
                other.listingDate == listingDate) &&
            (identical(other.deviceRam, deviceRam) ||
                other.deviceRam == deviceRam) &&
            (identical(other.warranty, warranty) ||
                other.warranty == warranty) &&
            (identical(other.originalPrice, originalPrice) ||
                other.originalPrice == originalPrice) &&
            (identical(other.discountedPrice, discountedPrice) ||
                other.discountedPrice == discountedPrice) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        deviceCondition,
        listedBy,
        deviceStorage,
        const DeepCollectionEquality().hash(_images),
        defaultImage,
        listingState,
        listingLocation,
        listingLocality,
        listingPrice,
        make,
        marketingName,
        openForNegotiation,
        verified,
        listingId,
        status,
        verifiedDate,
        listingDate,
        deviceRam,
        warranty,
        originalPrice,
        discountedPrice,
        imagePath,
        createdAt,
        updatedAt,
        location
      ]);

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      __$$ProductImplCopyWithImpl<_$ProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductImplToJson(
      this,
    );
  }
}

abstract class _Product implements Product {
  const factory _Product(
      {@JsonKey(name: "_id") required final String id,
      required final String deviceCondition,
      required final String listedBy,
      required final String deviceStorage,
      final List<ProductImage> images,
      @JsonKey(defaultValue: null) final DefaultImage? defaultImage,
      required final String listingState,
      required final String listingLocation,
      required final String listingLocality,
      required final String listingPrice,
      required final String make,
      required final String marketingName,
      required final bool openForNegotiation,
      final bool verified,
      required final String listingId,
      required final String status,
      final String verifiedDate,
      required final String listingDate,
      required final String deviceRam,
      required final String warranty,
      final int originalPrice,
      final int discountedPrice,
      required final String imagePath,
      required final String createdAt,
      required final String updatedAt,
      final ProductLocation? location}) = _$ProductImpl;

  factory _Product.fromJson(Map<String, dynamic> json) = _$ProductImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String get id;
  @override
  String get deviceCondition;
  @override
  String get listedBy;
  @override
  String get deviceStorage;
  @override
  List<ProductImage> get images; // ✅ Avoid null list errors
  @override
  @JsonKey(defaultValue: null)
  DefaultImage? get defaultImage; // ✅ Nullable object
  @override
  String get listingState;
  @override
  String get listingLocation;
  @override
  String get listingLocality;
  @override
  String get listingPrice;
  @override
  String get make;
  @override
  String get marketingName;
  @override
  bool get openForNegotiation;
  @override
  bool get verified;
  @override
  String get listingId;
  @override
  String get status;
  @override
  String get verifiedDate;
  @override
  String get listingDate;
  @override
  String get deviceRam;
  @override
  String get warranty;
  @override
  int get originalPrice; // ✅ Avoid null cast to int error
  @override
  int get discountedPrice; // ✅ Avoid null cast to int error
  @override
  String get imagePath;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  ProductLocation? get location;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductImage _$ProductImageFromJson(Map<String, dynamic> json) {
  return _ProductImage.fromJson(json);
}

/// @nodoc
mixin _$ProductImage {
  String get thumbImage => throw _privateConstructorUsedError;
  String get fullImage => throw _privateConstructorUsedError;
  String get isVarified => throw _privateConstructorUsedError;
  String get option => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  String get id => throw _privateConstructorUsedError;

  /// Serializes this ProductImage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductImageCopyWith<ProductImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductImageCopyWith<$Res> {
  factory $ProductImageCopyWith(
          ProductImage value, $Res Function(ProductImage) then) =
      _$ProductImageCopyWithImpl<$Res, ProductImage>;
  @useResult
  $Res call(
      {String thumbImage,
      String fullImage,
      String isVarified,
      String option,
      @JsonKey(name: "_id") String id});
}

/// @nodoc
class _$ProductImageCopyWithImpl<$Res, $Val extends ProductImage>
    implements $ProductImageCopyWith<$Res> {
  _$ProductImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? thumbImage = null,
    Object? fullImage = null,
    Object? isVarified = null,
    Object? option = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      thumbImage: null == thumbImage
          ? _value.thumbImage
          : thumbImage // ignore: cast_nullable_to_non_nullable
              as String,
      fullImage: null == fullImage
          ? _value.fullImage
          : fullImage // ignore: cast_nullable_to_non_nullable
              as String,
      isVarified: null == isVarified
          ? _value.isVarified
          : isVarified // ignore: cast_nullable_to_non_nullable
              as String,
      option: null == option
          ? _value.option
          : option // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductImageImplCopyWith<$Res>
    implements $ProductImageCopyWith<$Res> {
  factory _$$ProductImageImplCopyWith(
          _$ProductImageImpl value, $Res Function(_$ProductImageImpl) then) =
      __$$ProductImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String thumbImage,
      String fullImage,
      String isVarified,
      String option,
      @JsonKey(name: "_id") String id});
}

/// @nodoc
class __$$ProductImageImplCopyWithImpl<$Res>
    extends _$ProductImageCopyWithImpl<$Res, _$ProductImageImpl>
    implements _$$ProductImageImplCopyWith<$Res> {
  __$$ProductImageImplCopyWithImpl(
      _$ProductImageImpl _value, $Res Function(_$ProductImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? thumbImage = null,
    Object? fullImage = null,
    Object? isVarified = null,
    Object? option = null,
    Object? id = null,
  }) {
    return _then(_$ProductImageImpl(
      thumbImage: null == thumbImage
          ? _value.thumbImage
          : thumbImage // ignore: cast_nullable_to_non_nullable
              as String,
      fullImage: null == fullImage
          ? _value.fullImage
          : fullImage // ignore: cast_nullable_to_non_nullable
              as String,
      isVarified: null == isVarified
          ? _value.isVarified
          : isVarified // ignore: cast_nullable_to_non_nullable
              as String,
      option: null == option
          ? _value.option
          : option // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductImageImpl implements _ProductImage {
  const _$ProductImageImpl(
      {this.thumbImage = "",
      this.fullImage = "",
      this.isVarified = "",
      this.option = "",
      @JsonKey(name: "_id") required this.id});

  factory _$ProductImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductImageImplFromJson(json);

  @override
  @JsonKey()
  final String thumbImage;
  @override
  @JsonKey()
  final String fullImage;
  @override
  @JsonKey()
  final String isVarified;
  @override
  @JsonKey()
  final String option;
  @override
  @JsonKey(name: "_id")
  final String id;

  @override
  String toString() {
    return 'ProductImage(thumbImage: $thumbImage, fullImage: $fullImage, isVarified: $isVarified, option: $option, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImageImpl &&
            (identical(other.thumbImage, thumbImage) ||
                other.thumbImage == thumbImage) &&
            (identical(other.fullImage, fullImage) ||
                other.fullImage == fullImage) &&
            (identical(other.isVarified, isVarified) ||
                other.isVarified == isVarified) &&
            (identical(other.option, option) || other.option == option) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, thumbImage, fullImage, isVarified, option, id);

  /// Create a copy of ProductImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImageImplCopyWith<_$ProductImageImpl> get copyWith =>
      __$$ProductImageImplCopyWithImpl<_$ProductImageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductImageImplToJson(
      this,
    );
  }
}

abstract class _ProductImage implements ProductImage {
  const factory _ProductImage(
      {final String thumbImage,
      final String fullImage,
      final String isVarified,
      final String option,
      @JsonKey(name: "_id") required final String id}) = _$ProductImageImpl;

  factory _ProductImage.fromJson(Map<String, dynamic> json) =
      _$ProductImageImpl.fromJson;

  @override
  String get thumbImage;
  @override
  String get fullImage;
  @override
  String get isVarified;
  @override
  String get option;
  @override
  @JsonKey(name: "_id")
  String get id;

  /// Create a copy of ProductImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductImageImplCopyWith<_$ProductImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DefaultImage _$DefaultImageFromJson(Map<String, dynamic> json) {
  return _DefaultImage.fromJson(json);
}

/// @nodoc
mixin _$DefaultImage {
  String get fullImage => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  String get id => throw _privateConstructorUsedError;

  /// Serializes this DefaultImage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DefaultImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DefaultImageCopyWith<DefaultImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DefaultImageCopyWith<$Res> {
  factory $DefaultImageCopyWith(
          DefaultImage value, $Res Function(DefaultImage) then) =
      _$DefaultImageCopyWithImpl<$Res, DefaultImage>;
  @useResult
  $Res call({String fullImage, @JsonKey(name: "_id") String id});
}

/// @nodoc
class _$DefaultImageCopyWithImpl<$Res, $Val extends DefaultImage>
    implements $DefaultImageCopyWith<$Res> {
  _$DefaultImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DefaultImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullImage = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      fullImage: null == fullImage
          ? _value.fullImage
          : fullImage // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DefaultImageImplCopyWith<$Res>
    implements $DefaultImageCopyWith<$Res> {
  factory _$$DefaultImageImplCopyWith(
          _$DefaultImageImpl value, $Res Function(_$DefaultImageImpl) then) =
      __$$DefaultImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String fullImage, @JsonKey(name: "_id") String id});
}

/// @nodoc
class __$$DefaultImageImplCopyWithImpl<$Res>
    extends _$DefaultImageCopyWithImpl<$Res, _$DefaultImageImpl>
    implements _$$DefaultImageImplCopyWith<$Res> {
  __$$DefaultImageImplCopyWithImpl(
      _$DefaultImageImpl _value, $Res Function(_$DefaultImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of DefaultImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullImage = null,
    Object? id = null,
  }) {
    return _then(_$DefaultImageImpl(
      fullImage: null == fullImage
          ? _value.fullImage
          : fullImage // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DefaultImageImpl implements _DefaultImage {
  const _$DefaultImageImpl(
      {required this.fullImage, @JsonKey(name: "_id") required this.id});

  factory _$DefaultImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$DefaultImageImplFromJson(json);

  @override
  final String fullImage;
  @override
  @JsonKey(name: "_id")
  final String id;

  @override
  String toString() {
    return 'DefaultImage(fullImage: $fullImage, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DefaultImageImpl &&
            (identical(other.fullImage, fullImage) ||
                other.fullImage == fullImage) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, fullImage, id);

  /// Create a copy of DefaultImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DefaultImageImplCopyWith<_$DefaultImageImpl> get copyWith =>
      __$$DefaultImageImplCopyWithImpl<_$DefaultImageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DefaultImageImplToJson(
      this,
    );
  }
}

abstract class _DefaultImage implements DefaultImage {
  const factory _DefaultImage(
      {required final String fullImage,
      @JsonKey(name: "_id") required final String id}) = _$DefaultImageImpl;

  factory _DefaultImage.fromJson(Map<String, dynamic> json) =
      _$DefaultImageImpl.fromJson;

  @override
  String get fullImage;
  @override
  @JsonKey(name: "_id")
  String get id;

  /// Create a copy of DefaultImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DefaultImageImplCopyWith<_$DefaultImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductLocation _$ProductLocationFromJson(Map<String, dynamic> json) {
  return _ProductLocation.fromJson(json);
}

/// @nodoc
mixin _$ProductLocation {
  String get type => throw _privateConstructorUsedError;
  List<double> get coordinates => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  String get id => throw _privateConstructorUsedError;

  /// Serializes this ProductLocation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductLocation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductLocationCopyWith<ProductLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductLocationCopyWith<$Res> {
  factory $ProductLocationCopyWith(
          ProductLocation value, $Res Function(ProductLocation) then) =
      _$ProductLocationCopyWithImpl<$Res, ProductLocation>;
  @useResult
  $Res call(
      {String type, List<double> coordinates, @JsonKey(name: "_id") String id});
}

/// @nodoc
class _$ProductLocationCopyWithImpl<$Res, $Val extends ProductLocation>
    implements $ProductLocationCopyWith<$Res> {
  _$ProductLocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductLocation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? coordinates = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      coordinates: null == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<double>,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductLocationImplCopyWith<$Res>
    implements $ProductLocationCopyWith<$Res> {
  factory _$$ProductLocationImplCopyWith(_$ProductLocationImpl value,
          $Res Function(_$ProductLocationImpl) then) =
      __$$ProductLocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String type, List<double> coordinates, @JsonKey(name: "_id") String id});
}

/// @nodoc
class __$$ProductLocationImplCopyWithImpl<$Res>
    extends _$ProductLocationCopyWithImpl<$Res, _$ProductLocationImpl>
    implements _$$ProductLocationImplCopyWith<$Res> {
  __$$ProductLocationImplCopyWithImpl(
      _$ProductLocationImpl _value, $Res Function(_$ProductLocationImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductLocation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? coordinates = null,
    Object? id = null,
  }) {
    return _then(_$ProductLocationImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      coordinates: null == coordinates
          ? _value._coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<double>,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductLocationImpl implements _ProductLocation {
  const _$ProductLocationImpl(
      {required this.type,
      required final List<double> coordinates,
      @JsonKey(name: "_id") required this.id})
      : _coordinates = coordinates;

  factory _$ProductLocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductLocationImplFromJson(json);

  @override
  final String type;
  final List<double> _coordinates;
  @override
  List<double> get coordinates {
    if (_coordinates is EqualUnmodifiableListView) return _coordinates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_coordinates);
  }

  @override
  @JsonKey(name: "_id")
  final String id;

  @override
  String toString() {
    return 'ProductLocation(type: $type, coordinates: $coordinates, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductLocationImpl &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._coordinates, _coordinates) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, type, const DeepCollectionEquality().hash(_coordinates), id);

  /// Create a copy of ProductLocation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductLocationImplCopyWith<_$ProductLocationImpl> get copyWith =>
      __$$ProductLocationImplCopyWithImpl<_$ProductLocationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductLocationImplToJson(
      this,
    );
  }
}

abstract class _ProductLocation implements ProductLocation {
  const factory _ProductLocation(
      {required final String type,
      required final List<double> coordinates,
      @JsonKey(name: "_id") required final String id}) = _$ProductLocationImpl;

  factory _ProductLocation.fromJson(Map<String, dynamic> json) =
      _$ProductLocationImpl.fromJson;

  @override
  String get type;
  @override
  List<double> get coordinates;
  @override
  @JsonKey(name: "_id")
  String get id;

  /// Create a copy of ProductLocation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductLocationImplCopyWith<_$ProductLocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
