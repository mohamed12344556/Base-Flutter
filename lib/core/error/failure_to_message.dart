import 'package:flutter/material.dart';

import '../../generated/l10n.dart';
import 'failure.dart';

abstract final class FailureToMessage {
  static String translate(Failure failure, BuildContext context) {
    final s = S.of(context);
    switch (failure) {
      case NetworkFailure():
        return s.error_network;
      case ServerFailure():
        return s.error_server;
      case UnauthorizedFailure():
        return s.error_unauthorized;
      case NotFoundFailure():
        return s.error_not_found;
      case ValidationFailure():
        return s.error_validation;
      case UnknownFailure():
        return s.error_unknown;
    }
  }
}
