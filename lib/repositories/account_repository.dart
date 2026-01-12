import 'dart:convert';

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
}
