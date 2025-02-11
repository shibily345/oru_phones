// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'brand.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Brand _$BrandFromJson(Map<String, dynamic> json) {
  return _Brand.fromJson(json);
}

/// @nodoc
mixin _$Brand {
  String get make => throw _privateConstructorUsedError;
  String get imagePath => throw _privateConstructorUsedError;

  /// Serializes this Brand to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Brand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BrandCopyWith<Brand> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandCopyWith<$Res> {
  factory $BrandCopyWith(Brand value, $Res Function(Brand) then) =
      _$BrandCopyWithImpl<$Res, Brand>;
  @useResult
  $Res call({String make, String imagePath});
}

/// @nodoc
class _$BrandCopyWithImpl<$Res, $Val extends Brand>
    implements $BrandCopyWith<$Res> {
  _$BrandCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Brand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? make = null,
    Object? imagePath = null,
  }) {
    return _then(_value.copyWith(
      make: null == make
          ? _value.make
          : make // ignore: cast_nullable_to_non_nullable
              as String,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BrandImplCopyWith<$Res> implements $BrandCopyWith<$Res> {
  factory _$$BrandImplCopyWith(
          _$BrandImpl value, $Res Function(_$BrandImpl) then) =
      __$$BrandImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String make, String imagePath});
}

/// @nodoc
class __$$BrandImplCopyWithImpl<$Res>
    extends _$BrandCopyWithImpl<$Res, _$BrandImpl>
    implements _$$BrandImplCopyWith<$Res> {
  __$$BrandImplCopyWithImpl(
      _$BrandImpl _value, $Res Function(_$BrandImpl) _then)
      : super(_value, _then);

  /// Create a copy of Brand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? make = null,
    Object? imagePath = null,
  }) {
    return _then(_$BrandImpl(
      make: null == make
          ? _value.make
          : make // ignore: cast_nullable_to_non_nullable
              as String,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BrandImpl implements _Brand {
  const _$BrandImpl({this.make = "Other", this.imagePath = "non"});

  factory _$BrandImpl.fromJson(Map<String, dynamic> json) =>
      _$$BrandImplFromJson(json);

  @override
  @JsonKey()
  final String make;
  @override
  @JsonKey()
  final String imagePath;

  @override
  String toString() {
    return 'Brand(make: $make, imagePath: $imagePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BrandImpl &&
            (identical(other.make, make) || other.make == make) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, make, imagePath);

  /// Create a copy of Brand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BrandImplCopyWith<_$BrandImpl> get copyWith =>
      __$$BrandImplCopyWithImpl<_$BrandImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BrandImplToJson(
      this,
    );
  }
}

abstract class _Brand implements Brand {
  const factory _Brand({final String make, final String imagePath}) =
      _$BrandImpl;

  factory _Brand.fromJson(Map<String, dynamic> json) = _$BrandImpl.fromJson;

  @override
  String get make;
  @override
  String get imagePath;

  /// Create a copy of Brand
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BrandImplCopyWith<_$BrandImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BrandResponse _$BrandResponseFromJson(Map<String, dynamic> json) {
  return _BrandResponse.fromJson(json);
}

/// @nodoc
mixin _$BrandResponse {
  String get reason => throw _privateConstructorUsedError;
  int get statusCode => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: "dataObject")
  List<Brand> get brands => throw _privateConstructorUsedError;

  /// Serializes this BrandResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BrandResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BrandResponseCopyWith<BrandResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandResponseCopyWith<$Res> {
  factory $BrandResponseCopyWith(
          BrandResponse value, $Res Function(BrandResponse) then) =
      _$BrandResponseCopyWithImpl<$Res, BrandResponse>;
  @useResult
  $Res call(
      {String reason,
      int statusCode,
      String status,
      @JsonKey(name: "dataObject") List<Brand> brands});
}

/// @nodoc
class _$BrandResponseCopyWithImpl<$Res, $Val extends BrandResponse>
    implements $BrandResponseCopyWith<$Res> {
  _$BrandResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BrandResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reason = null,
    Object? statusCode = null,
    Object? status = null,
    Object? brands = null,
  }) {
    return _then(_value.copyWith(
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      brands: null == brands
          ? _value.brands
          : brands // ignore: cast_nullable_to_non_nullable
              as List<Brand>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BrandResponseImplCopyWith<$Res>
    implements $BrandResponseCopyWith<$Res> {
  factory _$$BrandResponseImplCopyWith(
          _$BrandResponseImpl value, $Res Function(_$BrandResponseImpl) then) =
      __$$BrandResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String reason,
      int statusCode,
      String status,
      @JsonKey(name: "dataObject") List<Brand> brands});
}

/// @nodoc
class __$$BrandResponseImplCopyWithImpl<$Res>
    extends _$BrandResponseCopyWithImpl<$Res, _$BrandResponseImpl>
    implements _$$BrandResponseImplCopyWith<$Res> {
  __$$BrandResponseImplCopyWithImpl(
      _$BrandResponseImpl _value, $Res Function(_$BrandResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of BrandResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reason = null,
    Object? statusCode = null,
    Object? status = null,
    Object? brands = null,
  }) {
    return _then(_$BrandResponseImpl(
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      brands: null == brands
          ? _value._brands
          : brands // ignore: cast_nullable_to_non_nullable
              as List<Brand>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BrandResponseImpl implements _BrandResponse {
  const _$BrandResponseImpl(
      {required this.reason,
      required this.statusCode,
      required this.status,
      @JsonKey(name: "dataObject") required final List<Brand> brands})
      : _brands = brands;

  factory _$BrandResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BrandResponseImplFromJson(json);

  @override
  final String reason;
  @override
  final int statusCode;
  @override
  final String status;
  final List<Brand> _brands;
  @override
  @JsonKey(name: "dataObject")
  List<Brand> get brands {
    if (_brands is EqualUnmodifiableListView) return _brands;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_brands);
  }

  @override
  String toString() {
    return 'BrandResponse(reason: $reason, statusCode: $statusCode, status: $status, brands: $brands)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BrandResponseImpl &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._brands, _brands));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, reason, statusCode, status,
      const DeepCollectionEquality().hash(_brands));

  /// Create a copy of BrandResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BrandResponseImplCopyWith<_$BrandResponseImpl> get copyWith =>
      __$$BrandResponseImplCopyWithImpl<_$BrandResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BrandResponseImplToJson(
      this,
    );
  }
}

abstract class _BrandResponse implements BrandResponse {
  const factory _BrandResponse(
          {required final String reason,
          required final int statusCode,
          required final String status,
          @JsonKey(name: "dataObject") required final List<Brand> brands}) =
      _$BrandResponseImpl;

  factory _BrandResponse.fromJson(Map<String, dynamic> json) =
      _$BrandResponseImpl.fromJson;

  @override
  String get reason;
  @override
  int get statusCode;
  @override
  String get status;
  @override
  @JsonKey(name: "dataObject")
  List<Brand> get brands;

  /// Create a copy of BrandResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BrandResponseImplCopyWith<_$BrandResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
