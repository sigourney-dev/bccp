import 'package:bccp/application/constants/app_colors.dart';
import 'package:bccp/presentation/common_widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../domain/models/response/lead/lead_response.dart';

class LeadItem extends StatelessWidget {
  final LeadResponse leadItem;
  const LeadItem({super.key, required this.leadItem});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 12.h),
        AppText(
          leadItem.customerName,
          fontSize: 14.sp,
          color: AppColors.black,
          fontWeight: FontWeight.w600,
        ),
        AppText(
          '${leadItem.phone} - ${leadItem.email}',
          fontSize: 12.sp,
          color: AppColors.grey74,
          fontWeight: FontWeight.w400,
        ),
        const Divider(
          height: 24.0,
          thickness: 1.0,
          color: AppColors.greyE5,
        )
      ],
    );
  }
}
