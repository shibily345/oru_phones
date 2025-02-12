import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required bool isLoggedIn,
    required String sessionId,
    required User user,
    required String csrfToken,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

@freezed
class User with _$User {
  const factory User({
    required String userName,
    required String email,
    required String profilePicPath,
    required String city,
    required String state,
    required String mobileNumber,
    required bool isAccountExpired,
    required String createdDate,
    required List<dynamic> favListings,
    required List<dynamic> userListings,
    required String userType,
    required bool WAOptIn,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
