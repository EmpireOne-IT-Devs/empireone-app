import 'dart:convert';

import 'package:empireone_app/models/employee_payload/employee_payload.dart';
import 'package:empireone_app/models/models.dart';
import 'package:empireone_app/services/account_service.dart';

class AccountRepository {
  final AccountService _accountService;

  AccountRepository({required AccountService accountService})
    : _accountService = accountService;

  Future<Result> signupJobSeeker({
    required String name,
    required String email,
    required String password,
    required String passwordConfirmation,
  }) async {
    var result = await _accountService.signUp(
      body: {
        'name': name,
        'email': email,
        'password': password,
        'password_confirmation': passwordConfirmation,
      },
    );
    return Result(statusCode: result.statusCode);
  }

  Future<Result<AccountPayload>> login({
    required String email,
    required String password,
    body,
  }) async {
    var result = await _accountService.login(
      body: {'email': email, 'password': password},
    );
    // print('Response body: ${result.body}');
    // print('Status code: ${result.statusCode}');

    if (result.statusCode == 200) {
      final payload = AccountPayload.fromJson(jsonDecode(result.body));
      return Result<AccountPayload>(
        statusCode: result.statusCode,
        data: payload,
      );
    } else {
      final payload = AccountPayload.fromJson(jsonDecode(result.body));
      return Result<AccountPayload>(
        statusCode: result.statusCode,
        data: payload,
      );
    }
  }

  Future<Result<EmployeePayload>> employeeId({
    required String employeeId,
  }) async {
    var result = await _accountService.employeeId(employeeId: employeeId);
    // print('here result: $result');
    if (result.statusCode == 200) {
      final Map<String, dynamic> body = jsonDecode(result.body);
      return Result(
        data: EmployeePayload.fromJson(body['data']),
        statusCode: result.statusCode,
      );
    } else if (result.statusCode == 400 ||
        result.statusCode == 401 ||
        result.statusCode == 402 ||
        result.statusCode == 403 ||
        result.statusCode == 404) {
      return Result<EmployeePayload>(statusCode: result.statusCode);
    } else {
      print('Failed URL: ${result.request?.url}');
      print('Error Body: ${result.body}');
      throw Exception('Server Error: ${result.statusCode}');
    }
  }

  Future<Result> sendOtp({required String email}) async {
    var result = await _accountService.sendOtp(body: {'email': email});
    print('result sendotp: ${result.body}');
    print('statuscode sendotp: ${result.statusCode}');

    return Result(
      // data: EmployeePayload.fromJson(jsonDecode(result.body)),
      statusCode: result.statusCode,
    );
  }

  Future<Result> verifyAccount({
    required String email,
    required String verificationCode,
  }) async {
    var result = await _accountService.verifyAccount(
      body: {'email': email, 'otp': verificationCode},
    );
    print('result verify account: ${result.body}');
    print('result verify account: ${result.statusCode}');
    return Result(statusCode: result.statusCode);
  }

  Future<Result> signInTGoogle({required String idToken}) async {
    var result = await _accountService.signInTGoogle(idToken: idToken);
    return Result(
      statusCode: result.statusCode,
      // data: AccountPayload.fromJson(jsonDecode(result.body)),
    );
  }
}
