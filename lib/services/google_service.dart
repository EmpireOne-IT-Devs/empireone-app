import 'package:google_sign_in/google_sign_in.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

class GoogleService {
  final GoogleSignIn googleSignIn;
  final String baseUrl;

  GoogleService(this.googleSignIn, this.baseUrl);
  final GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: ['email'],
    serverClientId:
        '543673078002-bhqkbrhr7cpfapraq0cjb3hl30mavj53.apps.googleusercontent.com',
  );

  Future<GoogleSignInAuthentication?> signIn() async {
    try {
      print('hereereee');
      final GoogleSignInAccount? googleSignInAccount = await _googleSignIn
          .signIn();

      print('googleSignInAccount: $googleSignInAccount');

      if (googleSignInAccount == null) {
        // User cancelled the login
        print('Google Sign-In cancelled by user.');
        return null;
      }
      print('GoogleSignInAccount:');
      print('  Display Name: ${googleSignInAccount.displayName}');
      print('  Email: ${googleSignInAccount.email}');
      print('  ID: ${googleSignInAccount.id}');

      final GoogleSignInAuthentication auth =
          await googleSignInAccount.authentication;

      print('GoogleSignInAuthentication Tokens:');
      print('  Access Token: ${auth.accessToken}');
      print('  ID Token: ${auth.idToken}');
      return auth;
    } catch (e) {
      print('Sign-in error: $e');
      return null;
    }
  }

  // Future<String?> getAccessToken() async {
  //   print('letsss goooo agol');
  //   final GoogleSignInAccount? googleSigninAccount = await _googleSignIn
  //       .signIn();
  //   print('account goolge : $googleSigninAccount');
  //   final GoogleSignInAuthentication? googleAuth =
  //       await googleSigninAccount?.authentication;
  //   print('agool google auth: $googleAuth');
  //   if (googleAuth != null) {
  //     final String? accessToken = googleAuth.accessToken;
  //     final String? idToken = googleAuth.idToken;
  //     print('here $accessToken');
  //     print('idtoken :: $idToken');
  //     await sendTokenToBackend('$idToken');
  //   }
  //   return googleAuth?.idToken;
  // }

  // Future<bool> sendTokenToBackend(String token) async {
  //   try {
  //     final response = await http.get(
  //       Uri.parse(
  //         'https://empireone-bpo.com/api/auth/google/app?token=${token}',
  //       ),
  //       headers: {
  //         'Content-Type': 'application/json',
  //         'Accept': 'application/json',
  //       },
  //     );

  //     if (response.statusCode == 200) {
  //       final Map<String, dynamic> responseData = jsonDecode(response.body);
  //       final bearerToken = responseData['token']?.toString();
  //       print('Received backend token22: $token');
  //       print('Bearer Token $bearerToken');
  //       return true;
  //     } else {
  //       print(
  //         'Backend login failed: ${response.statusCode} - ${response.body}',
  //       );
  //       return false;
  //     }
  //   } catch (e) {
  //     print('Error sending token to backend: $e');
  //     return false;
  //   }
  // }
}
