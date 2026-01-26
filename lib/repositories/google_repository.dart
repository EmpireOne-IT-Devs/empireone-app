import 'package:empireone_app/services/services.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleRepository {
  final GoogleService _googleService;

  const GoogleRepository({required GoogleService googleService})
    : _googleService = googleService;

  Future<GoogleSignInAuthentication?> signIn() async {
    try {
      return await _googleService.signIn();
    } catch (e) {
      return null;
    }
  }
}
