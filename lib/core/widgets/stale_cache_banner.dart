import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../generated/l10n.dart';

class StaleCacheBanner extends StatelessWidget {
  final VoidCallback onRetry;
  final String? message;
  final DateTime? timestamp;

  const StaleCacheBanner({
    required this.onRetry,
    this.message,
    this.timestamp,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return Material(
      color: Colors.amber.withValues(alpha: 0.9),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
        child: Row(
          children: [
            Icon(
              Icons.info_outline_rounded,
              color: Colors.amber.shade900,
              size: 20.r,
            ),
            SizedBox(width: 12.w),
            Expanded(
              child: Text(
                message ?? s.stale_cache_message,
                style: TextStyle(
                  color: Colors.amber.shade900,
                  fontSize: 14.sp,
                ),
              ),
            ),
            TextButton(
              onPressed: onRetry,
              child: Text(
                s.stale_cache_retry,
                style: TextStyle(
                  color: Colors.amber.shade900,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}