import 'dart:developer';

import 'package:flutter/material.dart';

/// Result returned after a payment attempt.
class PaymentResult {
  final bool success;
  final bool cancelled;
  final String? invoiceId;

  const PaymentResult({
    required this.success,
    required this.cancelled,
    this.invoiceId,
  });

  factory PaymentResult.success(String? invoiceId) =>
      PaymentResult(success: true, cancelled: false, invoiceId: invoiceId);

  factory PaymentResult.cancelled() =>
      const PaymentResult(success: false, cancelled: true);

  factory PaymentResult.failed() =>
      const PaymentResult(success: false, cancelled: false);
}

/// Global payment service — single entry-point for all payment flows.
class PaymentService {
  /// Opens the payment WebView and waits for the result.
  ///
  /// [paymentUrl] — the URL returned by the enrollment/subscription API.
  /// [referenceId] — the enrollment or upgrade-request ID used for tracking.
  Future<PaymentResult> openPayment({
    required BuildContext context,
    required String paymentUrl,
    required String referenceId,
  }) async {
    try {
      // TODO: replace with your own payment WebView screen
      final result = await Navigator.of(context).push<Map<String, dynamic>>(
        MaterialPageRoute(
          builder: (_) => Scaffold(
            appBar: AppBar(title: const Text('Payment')),
            body: Center(child: Text(paymentUrl)),
          ),
        ),
      );

      if (result == null) return PaymentResult.cancelled();

      final cancelled = result['cancelled'] == true;
      if (cancelled) return PaymentResult.cancelled();

      final success = result['success'] == true;
      final invoiceId = result['invoiceId'] as String?;

      return success
          ? PaymentResult.success(invoiceId)
          : PaymentResult.failed();
    } catch (e, s) {
      log('PaymentService error', name: 'eol.payment', error: e, stackTrace: s);
      return PaymentResult.failed();
    }
  }
}
