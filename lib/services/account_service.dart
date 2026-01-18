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
    return get(Uri.parse('$baseUrl/auth/google/app?token=$idToken'));
  }

  Future<Response> signUp({required Map<String, dynamic> body}) async {
    print('signup job seeker $baseUrl/auth/job_seeker_sign_up');
    print('body: $body');
    return post(Uri.parse('$baseUrl/auth/job_seeker_sign_up'), body: body);
  }

  Future<Response> jobSeekerVerifyOtp({
    required Map<String, dynamic> body,
  }) async {
    print('verify $baseUrl/auth/job_seeker_verify_otp');
    print('body: $body');
    return post(Uri.parse('$baseUrl/auth/job_seeker_verify_otp'), body: body);
  }
}
