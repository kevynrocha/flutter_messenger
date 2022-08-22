import 'package:google_sign_in/google_sign_in.dart';

import 'auth_service.dart';

class AuthRemoteService implements AuthService {
  AuthRemoteService({GoogleSignIn? googleSignIn})
      : _googleSignIn = googleSignIn ?? GoogleSignIn();

  final GoogleSignIn _googleSignIn;

  @override
  Future<GoogleSignInAccount?> signWithGoogle() async =>
      await _googleSignIn.signIn();
}
