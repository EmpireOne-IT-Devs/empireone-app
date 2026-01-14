import 'dart:convert';

import 'package:empireone_app/models/employee_payload/employee_payload.dart';
import 'package:empireone_app/models/models.dart';
import 'package:empireone_app/services/account_service.dart';

class AccountRepository {
  final AccountService _accountService;
  AccountRepository({required AccountService accountService})
    : _accountService = accountService;

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

  Future<Result<AccountPayload>> signInTGoogle({
    required String accessToken,
  }) async {
    var result = await _accountService.signInTGoogle(
      body: {'access_token': accessToken},
    );
    return Result(
      statusCode: result.statusCode,
      data: AccountPayload.fromJson(jsonDecode(result.body)),
    );
  }

  //   Future<void> save({
  //   int? id,
  //   String? token,
  //   String? email,
  //   int? userId,
  // }) async {
  //   await _accountDao.add(
  //     AccountTableCompanion.insert(
  //       id: id ?? 0,
  //       token: token ?? '',
  //       email: Value(email),
  //       userId: userId ?? 0,
  //     ),
  //   );
  // }

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
    } else {
      // print('Failed URL: ${result.request?.url}');
      // print('Error Body: ${result.body}');
      throw Exception('Server Error: ${result.statusCode}');
    }
  }

  Future<Result> sendOtp({required String email}) async {
    var result = await _accountService.sendOtp(email: email);
    return Result(
      // data: EmployeePayload.fromJson(jsonDecode(result.body)),
      statusCode: result.statusCode,
    );
  }
}
