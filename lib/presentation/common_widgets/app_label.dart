import 'package:bccp/application/constants/app_colors.dart';
import 'package:bccp/presentation/common_widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppLabel extends StatelessWidget {
  final String label;
  final String number;
  final Color borderColor;
  const AppLabel(
      {super.key,
      required this.label,
      required this.number,
      required this.borderColor});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: ((width - 70) / 3).w,
      height: 52.h,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(8.w),
        border: Border.all(color: AppColors.white),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppText(label, fontSize: 12.sp, color: AppColors.black),
            Row(
              children: [
                AppText(number, fontSize: 16.sp, color: AppColors.black),
                SizedBox(
                  width: 8.w,
                ),
                Container(
                  height: 48.h,
                  decoration: BoxDecoration(
                    border: Border(
                        right: BorderSide(width: 2.w, color: borderColor)),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
