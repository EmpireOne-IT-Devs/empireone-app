import 'package:http/http.dart';

class AccountService {
  final String baseUrl;
  final String baseUrl2;

  AccountService({required this.baseUrl, required this.baseUrl2});

  Future<Response> login({required Map<String, dynamic> body}) {
    print('url login : $baseUrl/auth/login');
    return post(Uri.parse('$baseUrl/auth/login'), body: body);
  }

  // Future<Response> signInTGoogle({required Map<String, dynamic> body}) async {
  //   return await post(Uri.parse('$baseUrl/auth/google'), body: body);
  // }

  Future<Response> employeeId({required String employeeId}) {
    print('url: $baseUrl2/employee/$employeeId');
    print('employeid: $employeeId');
    return get(Uri.parse('$baseUrl2/employee/$employeeId'));
  }

  Future<Response> sendOtp({required Map<String, dynamic> body}) {
    print('eeooooogs: $body');
    print('urlsendotp: $baseUrl');
    return post(Uri.parse('$baseUrl/auth/send_otp'), body: body);
  }

  Future<Response> verifyAccount({required Map<String, dynamic> body}) async {
    print('body: $body');
    print('urlsendotp: $baseUrl');
    return post(Uri.parse('$baseUrl/auth/send_otp'), body: body);
  }

  Future<Response> signInTGoogle({required String idToken}) {
    print('baseurl $baseUrl');
    print('url all: $baseUrl/auth/google/app?token=$idToken');
    print('idd: $idToken');
    return get(Uri.parse('$baseUrl/auth/google/app?token=$idToken'));
  }

  Future<Response> signUp({required Map<String, dynamic> body}) async {
    print('url signup: $baseUrl/auth/job_seeker_sign_up');
    print('body signup: $body');
    return post(Uri.parse('$baseUrl/auth/job_seeker_sign_up'), body: body);
  }

  Future<Response> jobSeekerVerifyOtp({
    required Map<String, dynamic> body,
  }) async {
    print('$baseUrl/auth/job_seeker_verify_otp');
    print('body: $body');
    return post(Uri.parse('$baseUrl/auth/job_seeker_verify_otp'), body: body);
  }
}
