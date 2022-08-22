import 'package:google_sign_in/google_sign_in.dart';

import '../../domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  UserModel({
    required super.id,
    required super.email,
    super.photoUrl,
    super.name,
  });

  factory UserModel.fromGoogleAccount(GoogleSignInAccount googleAccount) {
    return UserModel(
      id: googleAccount.id,
      email: googleAccount.email,
      name: googleAccount.displayName,
      photoUrl: googleAccount.photoUrl,
    );
  }

  factory UserModel.fromJson(Map<String, String> map) {
    return UserModel(
      id: map['id'] ?? '',
      email: map['email'] ?? '',
      name: map['displayName'],
      photoUrl: map['photoUrl'],
    );
  }
}
