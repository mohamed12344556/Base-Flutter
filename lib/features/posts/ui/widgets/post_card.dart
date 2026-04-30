import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widgets/custom_text.dart';
import '../../data/models/post_model.dart';

class PostCard extends StatelessWidget {
  final PostModel post;

  const PostCard({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 12.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(16.r),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 40.r,
              height: 40.r,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xFF2F98D7), Color(0xFF73CBFF)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Center(
                child: CustomText(
                  '${post.id}',
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(width: 12.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText.titleSm(
                    post.title,
                    color: const Color(0xFF1A1A2E),
                    maxLines: 2,
                  ),
                  SizedBox(height: 6.h),
                  CustomText.bodyMd(
                    post.body,
                    color: const Color(0xFF6B7280),
                    maxLines: 3,
                  ),
                  SizedBox(height: 8.h),
                  Row(
                    children: [
                      Icon(
                        Icons.person_outline,
                        size: 13.r,
                        color: const Color(0xFF9CA3AF),
                      ),
                      SizedBox(width: 4.w),
                      CustomText.caption(
                        'User ${post.userId}',
                        color: const Color(0xFF9CA3AF),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
