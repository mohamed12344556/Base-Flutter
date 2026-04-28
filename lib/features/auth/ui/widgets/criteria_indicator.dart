import 'package:flutter/material.dart';

import '../../../../core/core.dart';

class CriteriaIndicator extends StatelessWidget {
  final bool criterion;
  final String text;
  final IconData icon;

  const CriteriaIndicator({
    super.key,
    required this.criterion,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppPadding.chip,
      decoration: BoxDecoration(
        color: criterion
            ? Colors.green.withValues(alpha: 0.1)
            : Colors.grey[100],
        borderRadius: BorderRadius.circular(AppSizes.radiusXl),
        border: Border.all(
          color: criterion ? Colors.green : Colors.grey[300]!,
          width: 1,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: AppSizes.iconSm,
            color: criterion ? Colors.green : Colors.grey[600],
          ),
          6.horizontalSpace,
          Text(
            text,
            style: criterion
                ? AppTextStyling.font12W600.copyWith(color: Colors.green)
                : AppTextStyling.font12W400.copyWith(color: Colors.grey[600]),
          ),
        ],
      ),
    );
  }
}
