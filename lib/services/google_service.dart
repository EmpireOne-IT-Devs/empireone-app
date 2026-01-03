import 'package:google_sign_in/google_sign_in.dart';

class GoogleService {
  final GoogleSignIn _googleSignIn = GoogleSignIn.instance;

  final List<String> _requiredScopes = [
    'email',
    '',
  ];

    final String _clientId = '301631048424-pdrvq2jm03jhca6d3abtp63jqmliuobo.apps.googleusercontent.com'
  ;

  // final String _clientId =
  //     '543673078002-129ikt9prd41vbgreck91pcrmtsukmgf.apps.googleusercontent.com';

  Future<String?> getAccessToken() async {
    try {
      await _googleSignIn.initialize(serverClientId: _clientId);

      final GoogleSignInAccount account = await _googleSignIn.authenticate();

      final GoogleSignInClientAuthorization authorization = await account
          .authorizationClient
          .authorizeScopes(_requiredScopes);

      return authorization.accessToken;
    } catch (e) {
      print('Token fetch failed: $e');
      return null;
    }
  }
}
