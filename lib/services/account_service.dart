import 'package:http/http.dart';

class AccountService {
  final String baseUrl;
  AccountService({required this.baseUrl});

  Future<Response> login({required Map<String, dynamic> body}) {
    return post(Uri.parse('$baseUrl/login'), body: body);
  }
    Future<Response> signInTGoogle({required Map<String, dynamic> body}) async {
    return await post(
      Uri.parse('$baseUrl/google'),
      body: body,
    );
  }
}
