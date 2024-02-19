import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '/application/constants/app_colors.dart';
import '/gen/assets.gen.dart';
import '/presentation/common_widgets/app_text.dart';

class AppHeaderBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final bool showClose;
  final List<Widget>? actions;
  final double? height;
  final Color? color;
  final Color? backgroundColor;
  final Widget? icon;

  const AppHeaderBar({
    super.key,
    this.title,
    this.showClose = true,
    this.actions,
    this.height,
    this.color,
    this.backgroundColor,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final contentColor = color ?? AppColors.black;

    return AppBar(
      centerTitle: true,
      surfaceTintColor: Colors.transparent,
      backgroundColor: backgroundColor ?? AppColors.white,
      automaticallyImplyLeading: false,
      systemOverlayStyle: SystemUiOverlayStyle.dark,
      elevation: 0,
      title: SizedBox(
        width: 1.sw,
        height: height ?? 40.h,
        child: Stack(
          children: [
            Center(
              child: AppText(
                title ?? "",
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                color: contentColor,
              ),
            ),
            SizedBox(
              height: height ?? 40.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Builder(builder: (context) {
                    if (showClose) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: icon ??
                            Assets.icons.arrowRight.svg(
                              width: 24.w,
                              height: 24.w,
                              colorFilter: ColorFilter.mode(
                                  contentColor, BlendMode.srcIn),
                            ),
                      );
                    }

                    return SizedBox(width: 10.w);
                  }),
                  Builder(builder: (context) {
                    if (actions != null) {
                      return Row(children: actions!);
                    }

                    return SizedBox(width: 10.w);
                  }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height ?? 40.h);
}
