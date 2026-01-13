import 'package:google_sign_in/google_sign_in.dart';

class GoogleService {
  final GoogleSignIn googleSignIn;
  final String baseUrl;

  GoogleService(this.googleSignIn, this.baseUrl);

  var gSignIn = GoogleSignIn(
    serverClientId:
        '301631048424-pdrvq2jm03jhca6d3abtp63jqmliuobo.apps.googleusercontent.com',
    scopes: ['email', 'profile'],
  );

  Future<GoogleSignInAuthentication?> getAccessToken() async {
    final googleSigninAccount = await gSignIn.signIn();
    final GoogleSignInAuthentication? googleAuth =
        await googleSigninAccount?.authentication;
    if (googleAuth != null) {
      // final String? accessToken = googleAuth.accessToken;
      // final String? idToken = googleAuth.idToken;
      // print('here $accessToken');
      // print('idtoken :: $idToken');
    }
    try {
      return await googleSigninAccount?.authentication;
    } catch (e) {
      return null;
    }
  }
}
