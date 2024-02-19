import 'package:bccp/application/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../common_widgets/app_text.dart';
import '/gen/assets.gen.dart';

class AppBarHome extends StatelessWidget {
  const AppBarHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {},
            child: Assets.icons.logo.svg(
              width: 40.w,
              height: 40.w,
            ),
          ),
          Container(
            width: 44.w,
            height: 44.w,
            child: Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Positioned(
                    child: GestureDetector(
                  onTap: () {},
                  child: Assets.icons.notification.svg(
                    width: 24.w,
                    height: 24.w,
                  ),
                )),
                Positioned(
                  left: 28,
                  bottom: 28,
                  child: CircleAvatar(
                    radius: 8,
                    backgroundColor: AppColors.red5A,
                    child: AppText(
                      '12',
                      fontSize: 9.sp,
                      color: AppColors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
