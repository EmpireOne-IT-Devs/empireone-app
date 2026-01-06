import 'package:google_sign_in/google_sign_in.dart';

class GoogleService {
  final GoogleSignIn _googleSignIn = GoogleSignIn.instance;
  // Your Web Client ID (REQUIRED for Android)
  static const String _serverClientId =
      '543673078002-5bh3ukvberh6j3nuqsojtj1mlp9vrlcq.apps.googleusercontent.com';

  final List<String> _requiredScopes = [
    'email',
    // 'https://www.googleapis.com/auth/contacts.readonly',
  ];
  bool _isInitialized = false;

  // Initialize GoogleSignIn
  Future<void> _ensureInitialized() async {
    if (!_isInitialized) {
      print('🔄 Initializing GoogleSignIn...');
      try {
        await _googleSignIn.initialize(serverClientId: _serverClientId);
        _isInitialized = true;
        print('✅ GoogleSignIn initialized successfully');
        print('📋 Server Client ID: $_serverClientId');
      } catch (e) {
        print('❌ Initialization failed: $e');
        rethrow;
      }
    } else {
      print('ℹ️  GoogleSignIn already initialized');
    }
  }

  // Get access token with detailed logging
  Future<String?> getAccessToken() async {
    print('\n🚀 Starting Google Sign-In process...');
    print('📍 Step 1: Ensuring initialization');

    try {
      // Step 1: Initialize
      await _ensureInitialized();

      // Step 2: Authenticate
      print('\n📍 Step 2: Authenticating user');
      print('🔑 Requested scopes:');
      for (var scope in _requiredScopes) {
        print('   - $scope');
      }

      final account = await _googleSignIn.authenticate(
        scopeHint: _requiredScopes,
      );

      print('✅ Authentication successful!');
      print('👤 User email: ${account.email}');
      print('👤 User name: ${account.displayName}');
      print('🆔 User ID: ${account.id}');

      // Step 3: Authorize scopes
      print('\n📍 Step 3: Authorizing scopes');
      final authorization = await account.authorizationClient.authorizeScopes(
        _requiredScopes,
      );

      print('✅ Scopes authorized successfully!');

      // Step 4: Get access token
      print('\n📍 Step 4: Getting access token');
      // final accessToken = authorization.accessToken;

      // if (accessToken != null && accessToken.isNotEmpty) {
      //   print('✅ Access token obtained successfully!');
      //   print(
      //     '🔑 Token (first 30 chars): ${accessToken.substring(0, accessToken.length > 30 ? 30 : accessToken.length)}...',
      //   );
      //   print('📏 Token length: ${accessToken.length} characters');
      //   print('\n🎉 SUCCESS! You can now use this token to call Google APIs');
      //   return accessToken;
      // } else {
      //   print('❌ Access token is null or empty');
      //   return null;
      // }
    } on GoogleSignInException catch (e) {
      print('\n❌ GoogleSignInException occurred!');
      print('🔴 Error Code: ${e.code.name}');
      print('🔴 Description: ${e.description}');
      print('🔴 Details: ${e.details}');

      return null;
    } catch (e) {
      print('\n❌ Unexpected error occurred!');
      print('🔴 Error type: ${e.runtimeType}');
      print('🔴 Error message: $e');
      return null;
    }
  }
}
