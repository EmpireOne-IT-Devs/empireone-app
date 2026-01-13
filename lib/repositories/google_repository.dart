import 'package:empireone_app/services/services.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleRepository {
  final GoogleService _googleService;

  const GoogleRepository({
    required GoogleService googleService,
  }) : _googleService = googleService;

  Future<String?> signIn() async {
    try {
      return await _googleService.getAccessToken();
    } catch (e) {
      return null;
    }
  }
}
