import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/core.dart';

class StrengthItem extends StatelessWidget {
  final String text;
  final bool isMet;

  const StrengthItem({super.key, required this.text, required this.isMet});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.h),
      child: Row(
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            padding: EdgeInsets.all(2.r),
            decoration: BoxDecoration(
              color: isMet ? Colors.green : Colors.grey[300],
              shape: BoxShape.circle,
            ),
            child: Icon(
              isMet ? Icons.check : Icons.close,
              size: 12.r,
              color: Colors.white,
            ),
          ),
          AppSpacing.h8,
          Text(
            text,
            style: AppTextStyling.font12W400.copyWith(
              color: isMet ? Colors.green : Colors.grey[600],
            ),
          ),
        ],
      ),
    );
  }
}
