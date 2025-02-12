// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      isLoggedIn: json['isLoggedIn'] as bool,
      sessionId: json['sessionId'] as String,
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      csrfToken: json['csrfToken'] as String,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'isLoggedIn': instance.isLoggedIn,
      'sessionId': instance.sessionId,
      'user': instance.user,
      'csrfToken': instance.csrfToken,
    };

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      userName: json['userName'] as String,
      email: json['email'] as String,
      profilePicPath: json['profilePicPath'] as String,
      city: json['city'] as String,
      state: json['state'] as String,
      mobileNumber: json['mobileNumber'] as String,
      isAccountExpired: json['isAccountExpired'] as bool,
      createdDate: json['createdDate'] as String,
      favListings: json['favListings'] as List<dynamic>,
      userListings: json['userListings'] as List<dynamic>,
      userType: json['userType'] as String,
      WAOptIn: json['WAOptIn'] as bool,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'userName': instance.userName,
      'email': instance.email,
      'profilePicPath': instance.profilePicPath,
      'city': instance.city,
      'state': instance.state,
      'mobileNumber': instance.mobileNumber,
      'isAccountExpired': instance.isAccountExpired,
      'createdDate': instance.createdDate,
      'favListings': instance.favListings,
      'userListings': instance.userListings,
      'userType': instance.userType,
      'WAOptIn': instance.WAOptIn,
    };
