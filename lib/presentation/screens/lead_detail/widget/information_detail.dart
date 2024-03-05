import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../application/constants/app_colors.dart';
import '../../../common_widgets/app_text.dart';

class InformationDetail extends StatelessWidget {
  final String title;
  final String content;
  const InformationDetail({super.key, required this.title, required this.content,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 8.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AppText(title, fontSize: 14.sp, fontWeight: FontWeight.w400, color: AppColors.grey74,),
          AppText(content, fontSize: 14.sp, fontWeight: FontWeight.w400, color: AppColors.black,),
        ],
      ),
    );
  }
}
