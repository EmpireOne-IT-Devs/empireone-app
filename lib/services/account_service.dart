import 'package:http/http.dart';

class AccountService {
  final String baseUrl;
  AccountService({required this.baseUrl});

  Future<Response> login({required Map<String, dynamic> body}) {
    return post(Uri.parse('$baseUrl/auth/login'), body: body);
  }

  Future<Response> signInTGoogle({required Map<String, dynamic> body}) async {
    return await post(Uri.parse('$baseUrl/auth/google'), body: body);
  }

  Future<Response> employeeId({required String employeeId}) {
    return get(Uri.parse('$baseUrl/auth/employee/$employeeId'));
  }

    Future<Response> sendOtp({required String email}) {
    return get(Uri.parse('$baseUrl/auth/send_otp/$email'));
  }
}
