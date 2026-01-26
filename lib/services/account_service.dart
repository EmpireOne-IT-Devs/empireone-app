import 'package:http/http.dart';

class AccountService {
  final String baseUrl;
  final String baseUrl2;

  AccountService({required this.baseUrl, required this.baseUrl2});

  Future<Response> login({required Map<String, dynamic> body}) {
    return post(Uri.parse('$baseUrl/auth/login'), body: body);
  }

  Future<Response> employeeId({required String employeeId}) {
    return get(Uri.parse('$baseUrl2/employee/$employeeId'));
  }

  Future<Response> sendOtp({required Map<String, dynamic> body}) {
    return post(Uri.parse('$baseUrl/auth/send_otp'), body: body);
  }

  Future<Response> verifyAccount({required Map<String, dynamic> body}) async {
    return post(Uri.parse('$baseUrl/auth/send_otp'), body: body);
  }

  Future<Response> signInTGoogle({required String idToken}) {
    print('url: $baseUrl/auth/google/app?token=$idToken');
    return get(Uri.parse('$baseUrl/auth/google/app?token=$idToken'));
  }

  Future<Response> signUp({required Map<String, dynamic> body}) async {
    return post(Uri.parse('$baseUrl/auth/job_seeker_sign_up'), body: body);
  }

  Future<Response> jobSeekerVerifyOtp({
    required Map<String, dynamic> body,
  }) async {
    return post(Uri.parse('$baseUrl/auth/job_seeker_verify_otp'), body: body);
  }

  Future<Response> forgotPassword({required Map<String, dynamic> body}) {
    return post(
      Uri.parse('$baseUrl/auth/forgot_password_send_otp'),
      body: body,
    );
  }

  Future<Response> forgotPasswordVerifyOtp({
    required Map<String, dynamic> body,
  }) async {
    return post(
      Uri.parse('$baseUrl/auth/forgot_password_verify_otp'),
      body: body,
    );
  }

  Future<Response> resetPassword({required Map<String, dynamic> body}) async {
    return post(Uri.parse('$baseUrl/auth/change_password'), body: body);
  }

  Future<Response> logout() async {
    return post(Uri.parse('$baseUrl/auth/logout'));
  }
}
