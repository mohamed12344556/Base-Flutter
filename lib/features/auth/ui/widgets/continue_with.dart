import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../generated/l10n.dart';

class ContinueWith extends StatelessWidget {
  const ContinueWith({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Expanded(child: Divider()),
        Text(
          S.of(context).continue_with,
          style: TextStyle(color: Colors.grey, fontSize: 14.sp),
        ),
        const Expanded(child: Divider()),
      ],
    );
  }
}
