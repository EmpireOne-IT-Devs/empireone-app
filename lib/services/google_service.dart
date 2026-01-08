import 'package:google_sign_in/google_sign_in.dart';

class GoogleService {
  final String clientId;
  final GoogleSignIn googleSignIn;
  final String baseUrl;

  GoogleService(this.googleSignIn, this.baseUrl, {required this.clientId});

  Future<GoogleSignInAuthentication?> getAccessToken() async {
    final googleSigninAccount = await googleSignIn.signIn();
    print(googleSigninAccount);
    final GoogleSignInAuthentication? googleAuth =
        await googleSigninAccount?.authentication;
    if (googleAuth != null) {
      final String? accessToken = googleAuth.accessToken;
      final String? idToken = googleAuth.idToken;
      print('here $accessToken');
    }
    try {
      return await googleSigninAccount?.authentication;
    } catch (e) {
      return null;
    }
  }
}
