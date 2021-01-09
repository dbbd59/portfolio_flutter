class AppException implements Exception {
  AppException({
    this.exceptionInfo,
    this.label,
  });

  final ExceptionInfo exceptionInfo;
  final String label;
}

class BadRequestException extends AppException {
  BadRequestException({
    ExceptionInfo exceptionInfo,
  }) : super(
          exceptionInfo: exceptionInfo,
          label: 'error_invalidrequest',
        );
}

class ExceptionInfo {
  ExceptionInfo({
    this.message,
    this.details,
    this.statusCode,
  });

  final String details;
  final String message;
  final int statusCode;
}

class FetchDataException extends AppException {
  FetchDataException({
    ExceptionInfo exceptionInfo,
  }) : super(
          exceptionInfo: exceptionInfo,
          label: 'error_fetchdata',
        );
}

class InvalidInputException extends AppException {
  InvalidInputException({
    ExceptionInfo exceptionInfo,
  }) : super(
          exceptionInfo: exceptionInfo,
          label: 'error_invalidinput',
        );
}

class UnauthorisedException extends AppException {
  UnauthorisedException({
    ExceptionInfo exceptionInfo,
  }) : super(
          exceptionInfo: exceptionInfo,
          label: 'error_unauthorised',
        );
}

class OfflineException extends AppException {
  OfflineException()
      : super(
          label: 'error_offline',
        );
}
