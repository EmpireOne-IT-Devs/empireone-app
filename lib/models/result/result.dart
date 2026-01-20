enum ResultStatus { success, error, none }

enum RequestStatus { waiting, inProgress, success, failure }

class Result<T> {
  final T? data;
  final int statusCode;
  Result({this.data, required this.statusCode});

  ResultStatus get resultStatus {
    switch (statusCode) {
      case 200:
        return ResultStatus.success;
      case 302: // redirect (usually auth/session issue)
      case 400: // bad request
      case 401: // unauthorized
      case 404: // not found
      case 422: // validation error
      case 500: // server error
        return ResultStatus.error;
      default:
        return ResultStatus.none;
    }
  }
}
