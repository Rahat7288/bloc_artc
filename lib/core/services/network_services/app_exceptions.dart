class AppExceptions implements Exception {
  final _message;
  final _prefix;

  AppExceptions([this._message, this._prefix]);

  @override
  String toString() {
    return '$_prefix$_message';
  }
}

class InternetException extends AppExceptions {
  InternetException([String? message]) : super(message, 'No Internet');
}

class RequestTimeOut extends AppExceptions {
  RequestTimeOut([String? message]) : super(message, 'Request Time Out');
}

class ServerExceptions extends AppExceptions {
  ServerExceptions([String? message]) : super(message, 'Internal Server error');
}

class InvalidUrlEception extends AppExceptions {
  InvalidUrlEception([String? message]) : super(message, 'Invalid Url');
}

class FetchDataExceptions extends AppExceptions {
  FetchDataExceptions([String? message]) : super(message, '');
}
