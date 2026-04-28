import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/core.dart';

class CustomSocialButton extends StatelessWidget {
  final String imagePath;
  final void Function() onTap;
  const CustomSocialButton({
    super.key,
    required this.onTap,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(AppSizes.radiusSm),
      onTap: onTap,
      child: Container(
        padding: AppPadding.all12,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey[300]!),
          borderRadius: BorderRadius.circular(AppSizes.radiusSm),
        ),
        child: SvgPicture.asset(
          imagePath,
          height: AppSizes.iconLg,
          width: AppSizes.iconLg,
        ),
      ),
    );
  }
}
