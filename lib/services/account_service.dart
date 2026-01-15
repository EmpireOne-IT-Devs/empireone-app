import 'package:http/http.dart';

class AccountService {
  final String baseUrl;
  final String baseUrl2;

  AccountService({required this.baseUrl, required this.baseUrl2});

  Future<Response> login({required Map<String, dynamic> body}) {
    print('url login : $baseUrl/auth/login');
    return post(Uri.parse('$baseUrl/auth/login'), body: body);
  }

  Future<Response> signInTGoogle({required Map<String, dynamic> body}) async {
    return await post(Uri.parse('$baseUrl/auth/google'), body: body);
  }

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

  Future<Response> verifyAccount({
    required String email,
    String? params,
  }) async {
    print('params: $params');
    print('urlsendotp: $baseUrl');
    print('dota2 : $baseUrl/auth/send_otp?$email${params ?? ''}');
    return post(Uri.parse('$baseUrl/auth/send_otp?$email&${params ?? ''}'));
  }
}
