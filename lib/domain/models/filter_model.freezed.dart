// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FilterModel _$FilterModelFromJson(Map<String, dynamic> json) {
  return _FilterModel.fromJson(json);
}

/// @nodoc
mixin _$FilterModel {
  String get reason => throw _privateConstructorUsedError;
  int get statusCode => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  FilterData get dataObject => throw _privateConstructorUsedError;

  /// Serializes this FilterModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FilterModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FilterModelCopyWith<FilterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterModelCopyWith<$Res> {
  factory $FilterModelCopyWith(
          FilterModel value, $Res Function(FilterModel) then) =
      _$FilterModelCopyWithImpl<$Res, FilterModel>;
  @useResult
  $Res call(
      {String reason, int statusCode, String status, FilterData dataObject});

  $FilterDataCopyWith<$Res> get dataObject;
}

/// @nodoc
class _$FilterModelCopyWithImpl<$Res, $Val extends FilterModel>
    implements $FilterModelCopyWith<$Res> {
  _$FilterModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FilterModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reason = null,
    Object? statusCode = null,
    Object? status = null,
    Object? dataObject = null,
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
      dataObject: null == dataObject
          ? _value.dataObject
          : dataObject // ignore: cast_nullable_to_non_nullable
              as FilterData,
    ) as $Val);
  }

  /// Create a copy of FilterModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FilterDataCopyWith<$Res> get dataObject {
    return $FilterDataCopyWith<$Res>(_value.dataObject, (value) {
      return _then(_value.copyWith(dataObject: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FilterModelImplCopyWith<$Res>
    implements $FilterModelCopyWith<$Res> {
  factory _$$FilterModelImplCopyWith(
          _$FilterModelImpl value, $Res Function(_$FilterModelImpl) then) =
      __$$FilterModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String reason, int statusCode, String status, FilterData dataObject});

  @override
  $FilterDataCopyWith<$Res> get dataObject;
}

/// @nodoc
class __$$FilterModelImplCopyWithImpl<$Res>
    extends _$FilterModelCopyWithImpl<$Res, _$FilterModelImpl>
    implements _$$FilterModelImplCopyWith<$Res> {
  __$$FilterModelImplCopyWithImpl(
      _$FilterModelImpl _value, $Res Function(_$FilterModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of FilterModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reason = null,
    Object? statusCode = null,
    Object? status = null,
    Object? dataObject = null,
  }) {
    return _then(_$FilterModelImpl(
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
      dataObject: null == dataObject
          ? _value.dataObject
          : dataObject // ignore: cast_nullable_to_non_nullable
              as FilterData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FilterModelImpl implements _FilterModel {
  _$FilterModelImpl(
      {this.reason = "",
      this.statusCode = 0,
      this.status = "",
      required this.dataObject});

  factory _$FilterModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FilterModelImplFromJson(json);

  @override
  @JsonKey()
  final String reason;
  @override
  @JsonKey()
  final int statusCode;
  @override
  @JsonKey()
  final String status;
  @override
  final FilterData dataObject;

  @override
  String toString() {
    return 'FilterModel(reason: $reason, statusCode: $statusCode, status: $status, dataObject: $dataObject)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterModelImpl &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.dataObject, dataObject) ||
                other.dataObject == dataObject));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, reason, statusCode, status, dataObject);

  /// Create a copy of FilterModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterModelImplCopyWith<_$FilterModelImpl> get copyWith =>
      __$$FilterModelImplCopyWithImpl<_$FilterModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FilterModelImplToJson(
      this,
    );
  }
}

abstract class _FilterModel implements FilterModel {
  factory _FilterModel(
      {final String reason,
      final int statusCode,
      final String status,
      required final FilterData dataObject}) = _$FilterModelImpl;

  factory _FilterModel.fromJson(Map<String, dynamic> json) =
      _$FilterModelImpl.fromJson;

  @override
  String get reason;
  @override
  int get statusCode;
  @override
  String get status;
  @override
  FilterData get dataObject;

  /// Create a copy of FilterModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FilterModelImplCopyWith<_$FilterModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FilterData _$FilterDataFromJson(Map<String, dynamic> json) {
  return _FilterData.fromJson(json);
}

/// @nodoc
mixin _$FilterData {
  List<String> get Brand => throw _privateConstructorUsedError;
  List<String> get Ram => throw _privateConstructorUsedError;
  List<String> get Storage => throw _privateConstructorUsedError;
  List<String> get Conditions => throw _privateConstructorUsedError;
  List<String> get Warranty => throw _privateConstructorUsedError;

  /// Serializes this FilterData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FilterData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FilterDataCopyWith<FilterData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterDataCopyWith<$Res> {
  factory $FilterDataCopyWith(
          FilterData value, $Res Function(FilterData) then) =
      _$FilterDataCopyWithImpl<$Res, FilterData>;
  @useResult
  $Res call(
      {List<String> Brand,
      List<String> Ram,
      List<String> Storage,
      List<String> Conditions,
      List<String> Warranty});
}

/// @nodoc
class _$FilterDataCopyWithImpl<$Res, $Val extends FilterData>
    implements $FilterDataCopyWith<$Res> {
  _$FilterDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FilterData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? Brand = null,
    Object? Ram = null,
    Object? Storage = null,
    Object? Conditions = null,
    Object? Warranty = null,
  }) {
    return _then(_value.copyWith(
      Brand: null == Brand
          ? _value.Brand
          : Brand // ignore: cast_nullable_to_non_nullable
              as List<String>,
      Ram: null == Ram
          ? _value.Ram
          : Ram // ignore: cast_nullable_to_non_nullable
              as List<String>,
      Storage: null == Storage
          ? _value.Storage
          : Storage // ignore: cast_nullable_to_non_nullable
              as List<String>,
      Conditions: null == Conditions
          ? _value.Conditions
          : Conditions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      Warranty: null == Warranty
          ? _value.Warranty
          : Warranty // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FilterDataImplCopyWith<$Res>
    implements $FilterDataCopyWith<$Res> {
  factory _$$FilterDataImplCopyWith(
          _$FilterDataImpl value, $Res Function(_$FilterDataImpl) then) =
      __$$FilterDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> Brand,
      List<String> Ram,
      List<String> Storage,
      List<String> Conditions,
      List<String> Warranty});
}

/// @nodoc
class __$$FilterDataImplCopyWithImpl<$Res>
    extends _$FilterDataCopyWithImpl<$Res, _$FilterDataImpl>
    implements _$$FilterDataImplCopyWith<$Res> {
  __$$FilterDataImplCopyWithImpl(
      _$FilterDataImpl _value, $Res Function(_$FilterDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of FilterData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? Brand = null,
    Object? Ram = null,
    Object? Storage = null,
    Object? Conditions = null,
    Object? Warranty = null,
  }) {
    return _then(_$FilterDataImpl(
      Brand: null == Brand
          ? _value._Brand
          : Brand // ignore: cast_nullable_to_non_nullable
              as List<String>,
      Ram: null == Ram
          ? _value._Ram
          : Ram // ignore: cast_nullable_to_non_nullable
              as List<String>,
      Storage: null == Storage
          ? _value._Storage
          : Storage // ignore: cast_nullable_to_non_nullable
              as List<String>,
      Conditions: null == Conditions
          ? _value._Conditions
          : Conditions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      Warranty: null == Warranty
          ? _value._Warranty
          : Warranty // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FilterDataImpl implements _FilterData {
  _$FilterDataImpl(
      {final List<String> Brand = const [],
      final List<String> Ram = const [],
      final List<String> Storage = const [],
      final List<String> Conditions = const [],
      final List<String> Warranty = const []})
      : _Brand = Brand,
        _Ram = Ram,
        _Storage = Storage,
        _Conditions = Conditions,
        _Warranty = Warranty;

  factory _$FilterDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$FilterDataImplFromJson(json);

  final List<String> _Brand;
  @override
  @JsonKey()
  List<String> get Brand {
    if (_Brand is EqualUnmodifiableListView) return _Brand;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_Brand);
  }

  final List<String> _Ram;
  @override
  @JsonKey()
  List<String> get Ram {
    if (_Ram is EqualUnmodifiableListView) return _Ram;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_Ram);
  }

  final List<String> _Storage;
  @override
  @JsonKey()
  List<String> get Storage {
    if (_Storage is EqualUnmodifiableListView) return _Storage;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_Storage);
  }

  final List<String> _Conditions;
  @override
  @JsonKey()
  List<String> get Conditions {
    if (_Conditions is EqualUnmodifiableListView) return _Conditions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_Conditions);
  }

  final List<String> _Warranty;
  @override
  @JsonKey()
  List<String> get Warranty {
    if (_Warranty is EqualUnmodifiableListView) return _Warranty;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_Warranty);
  }

  @override
  String toString() {
    return 'FilterData(Brand: $Brand, Ram: $Ram, Storage: $Storage, Conditions: $Conditions, Warranty: $Warranty)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterDataImpl &&
            const DeepCollectionEquality().equals(other._Brand, _Brand) &&
            const DeepCollectionEquality().equals(other._Ram, _Ram) &&
            const DeepCollectionEquality().equals(other._Storage, _Storage) &&
            const DeepCollectionEquality()
                .equals(other._Conditions, _Conditions) &&
            const DeepCollectionEquality().equals(other._Warranty, _Warranty));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_Brand),
      const DeepCollectionEquality().hash(_Ram),
      const DeepCollectionEquality().hash(_Storage),
      const DeepCollectionEquality().hash(_Conditions),
      const DeepCollectionEquality().hash(_Warranty));

  /// Create a copy of FilterData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterDataImplCopyWith<_$FilterDataImpl> get copyWith =>
      __$$FilterDataImplCopyWithImpl<_$FilterDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FilterDataImplToJson(
      this,
    );
  }
}

abstract class _FilterData implements FilterData {
  factory _FilterData(
      {final List<String> Brand,
      final List<String> Ram,
      final List<String> Storage,
      final List<String> Conditions,
      final List<String> Warranty}) = _$FilterDataImpl;

  factory _FilterData.fromJson(Map<String, dynamic> json) =
      _$FilterDataImpl.fromJson;

  @override
  List<String> get Brand;
  @override
  List<String> get Ram;
  @override
  List<String> get Storage;
  @override
  List<String> get Conditions;
  @override
  List<String> get Warranty;

  /// Create a copy of FilterData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FilterDataImplCopyWith<_$FilterDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
