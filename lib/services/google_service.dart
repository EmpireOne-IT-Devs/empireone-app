import 'package:google_sign_in/google_sign_in.dart';

class GoogleService {
  // final String clientId;
  final GoogleSignIn googleSignIn;
  final String baseUrl;

  GoogleService(this.googleSignIn, this.baseUrl, );

  Future<String?> getAccessToken() async {
    final GoogleSignInAccount? googleSigninAccount = await  googleSignIn.signIn();
    print(googleSigninAccount);
    final GoogleSignInAuthentication? googleAuth =
        await googleSigninAccount?.authentication;
    if (googleAuth != null) {
      final String? accessToken = googleAuth.accessToken;
      final String? idToken = googleAuth.idToken;
      print('here $accessToken');
      print('idtoken :: $idToken');
    }
    try {
      // return '$idToken';
    } catch (e) {
      return null;
    }
  }
}

