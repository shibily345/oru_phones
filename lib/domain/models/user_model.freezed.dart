// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  bool get isLoggedIn => throw _privateConstructorUsedError;
  String get sessionId => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;
  String get csrfToken => throw _privateConstructorUsedError;

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call({bool isLoggedIn, String sessionId, User user, String csrfToken});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoggedIn = null,
    Object? sessionId = null,
    Object? user = null,
    Object? csrfToken = null,
  }) {
    return _then(_value.copyWith(
      isLoggedIn: null == isLoggedIn
          ? _value.isLoggedIn
          : isLoggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
      sessionId: null == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      csrfToken: null == csrfToken
          ? _value.csrfToken
          : csrfToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
          _$UserModelImpl value, $Res Function(_$UserModelImpl) then) =
      __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoggedIn, String sessionId, User user, String csrfToken});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
      _$UserModelImpl _value, $Res Function(_$UserModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoggedIn = null,
    Object? sessionId = null,
    Object? user = null,
    Object? csrfToken = null,
  }) {
    return _then(_$UserModelImpl(
      isLoggedIn: null == isLoggedIn
          ? _value.isLoggedIn
          : isLoggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
      sessionId: null == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      csrfToken: null == csrfToken
          ? _value.csrfToken
          : csrfToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelImpl implements _UserModel {
  const _$UserModelImpl(
      {required this.isLoggedIn,
      required this.sessionId,
      required this.user,
      required this.csrfToken});

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  final bool isLoggedIn;
  @override
  final String sessionId;
  @override
  final User user;
  @override
  final String csrfToken;

  @override
  String toString() {
    return 'UserModel(isLoggedIn: $isLoggedIn, sessionId: $sessionId, user: $user, csrfToken: $csrfToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.isLoggedIn, isLoggedIn) ||
                other.isLoggedIn == isLoggedIn) &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.csrfToken, csrfToken) ||
                other.csrfToken == csrfToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoggedIn, sessionId, user, csrfToken);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel(
      {required final bool isLoggedIn,
      required final String sessionId,
      required final User user,
      required final String csrfToken}) = _$UserModelImpl;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  bool get isLoggedIn;
  @override
  String get sessionId;
  @override
  User get user;
  @override
  String get csrfToken;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  String get userName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get profilePicPath => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get state => throw _privateConstructorUsedError;
  String get mobileNumber => throw _privateConstructorUsedError;
  bool get isAccountExpired => throw _privateConstructorUsedError;
  String get createdDate => throw _privateConstructorUsedError;
  List<dynamic> get favListings => throw _privateConstructorUsedError;
  List<dynamic> get userListings => throw _privateConstructorUsedError;
  String get userType => throw _privateConstructorUsedError;
  bool get WAOptIn => throw _privateConstructorUsedError;

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {String userName,
      String email,
      String profilePicPath,
      String city,
      String state,
      String mobileNumber,
      bool isAccountExpired,
      String createdDate,
      List<dynamic> favListings,
      List<dynamic> userListings,
      String userType,
      bool WAOptIn});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? email = null,
    Object? profilePicPath = null,
    Object? city = null,
    Object? state = null,
    Object? mobileNumber = null,
    Object? isAccountExpired = null,
    Object? createdDate = null,
    Object? favListings = null,
    Object? userListings = null,
    Object? userType = null,
    Object? WAOptIn = null,
  }) {
    return _then(_value.copyWith(
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      profilePicPath: null == profilePicPath
          ? _value.profilePicPath
          : profilePicPath // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      mobileNumber: null == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String,
      isAccountExpired: null == isAccountExpired
          ? _value.isAccountExpired
          : isAccountExpired // ignore: cast_nullable_to_non_nullable
              as bool,
      createdDate: null == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as String,
      favListings: null == favListings
          ? _value.favListings
          : favListings // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      userListings: null == userListings
          ? _value.userListings
          : userListings // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      userType: null == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as String,
      WAOptIn: null == WAOptIn
          ? _value.WAOptIn
          : WAOptIn // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userName,
      String email,
      String profilePicPath,
      String city,
      String state,
      String mobileNumber,
      bool isAccountExpired,
      String createdDate,
      List<dynamic> favListings,
      List<dynamic> userListings,
      String userType,
      bool WAOptIn});
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? email = null,
    Object? profilePicPath = null,
    Object? city = null,
    Object? state = null,
    Object? mobileNumber = null,
    Object? isAccountExpired = null,
    Object? createdDate = null,
    Object? favListings = null,
    Object? userListings = null,
    Object? userType = null,
    Object? WAOptIn = null,
  }) {
    return _then(_$UserImpl(
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      profilePicPath: null == profilePicPath
          ? _value.profilePicPath
          : profilePicPath // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      mobileNumber: null == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String,
      isAccountExpired: null == isAccountExpired
          ? _value.isAccountExpired
          : isAccountExpired // ignore: cast_nullable_to_non_nullable
              as bool,
      createdDate: null == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as String,
      favListings: null == favListings
          ? _value._favListings
          : favListings // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      userListings: null == userListings
          ? _value._userListings
          : userListings // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      userType: null == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as String,
      WAOptIn: null == WAOptIn
          ? _value.WAOptIn
          : WAOptIn // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  const _$UserImpl(
      {required this.userName,
      required this.email,
      required this.profilePicPath,
      required this.city,
      required this.state,
      required this.mobileNumber,
      required this.isAccountExpired,
      required this.createdDate,
      required final List<dynamic> favListings,
      required final List<dynamic> userListings,
      required this.userType,
      required this.WAOptIn})
      : _favListings = favListings,
        _userListings = userListings;

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  final String userName;
  @override
  final String email;
  @override
  final String profilePicPath;
  @override
  final String city;
  @override
  final String state;
  @override
  final String mobileNumber;
  @override
  final bool isAccountExpired;
  @override
  final String createdDate;
  final List<dynamic> _favListings;
  @override
  List<dynamic> get favListings {
    if (_favListings is EqualUnmodifiableListView) return _favListings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favListings);
  }

  final List<dynamic> _userListings;
  @override
  List<dynamic> get userListings {
    if (_userListings is EqualUnmodifiableListView) return _userListings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userListings);
  }

  @override
  final String userType;
  @override
  final bool WAOptIn;

  @override
  String toString() {
    return 'User(userName: $userName, email: $email, profilePicPath: $profilePicPath, city: $city, state: $state, mobileNumber: $mobileNumber, isAccountExpired: $isAccountExpired, createdDate: $createdDate, favListings: $favListings, userListings: $userListings, userType: $userType, WAOptIn: $WAOptIn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.profilePicPath, profilePicPath) ||
                other.profilePicPath == profilePicPath) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.mobileNumber, mobileNumber) ||
                other.mobileNumber == mobileNumber) &&
            (identical(other.isAccountExpired, isAccountExpired) ||
                other.isAccountExpired == isAccountExpired) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            const DeepCollectionEquality()
                .equals(other._favListings, _favListings) &&
            const DeepCollectionEquality()
                .equals(other._userListings, _userListings) &&
            (identical(other.userType, userType) ||
                other.userType == userType) &&
            (identical(other.WAOptIn, WAOptIn) || other.WAOptIn == WAOptIn));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userName,
      email,
      profilePicPath,
      city,
      state,
      mobileNumber,
      isAccountExpired,
      createdDate,
      const DeepCollectionEquality().hash(_favListings),
      const DeepCollectionEquality().hash(_userListings),
      userType,
      WAOptIn);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {required final String userName,
      required final String email,
      required final String profilePicPath,
      required final String city,
      required final String state,
      required final String mobileNumber,
      required final bool isAccountExpired,
      required final String createdDate,
      required final List<dynamic> favListings,
      required final List<dynamic> userListings,
      required final String userType,
      required final bool WAOptIn}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  String get userName;
  @override
  String get email;
  @override
  String get profilePicPath;
  @override
  String get city;
  @override
  String get state;
  @override
  String get mobileNumber;
  @override
  bool get isAccountExpired;
  @override
  String get createdDate;
  @override
  List<dynamic> get favListings;
  @override
  List<dynamic> get userListings;
  @override
  String get userType;
  @override
  bool get WAOptIn;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
