import 'package:flutter/material.dart';

import '../../generated/l10n.dart';
import '../error/failure.dart';
import '../error/failure_to_message.dart';
import 'custom_button.dart';

class AppErrorView extends StatelessWidget {
  const AppErrorView({
    required this.failure,
    this.onRetry,
    super.key,
  });

  final Failure failure;
  final VoidCallback? onRetry;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            failure is NetworkFailure ? Icons.wifi_off : Icons.error_outline,
            size: 48,
            color: Theme.of(context).colorScheme.error,
          ),
          const SizedBox(height: 16),
          Text(
            FailureToMessage.translate(failure, context),
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
          if (onRetry != null) ...[
            const SizedBox(height: 16),
            CustomButton(
              text: S.of(context).retry,
              onPressed: onRetry,
            ),
          ],
        ],
      ),
    );
  }
}
