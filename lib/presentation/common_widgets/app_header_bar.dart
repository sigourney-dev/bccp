import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '/application/constants/app_colors.dart';
import '/gen/assets.gen.dart';
import '/presentation/common_widgets/app_text.dart';

class AppHeaderBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final bool showClose;
  final List<Widget>? leftActions;
  final List<Widget>? rightActions;
  final double? height;
  final Color? color;
  final Color? backgroundColor;
  final Widget? iconLeft;
  final Widget? iconRight;
  final Function? onTapRight;

  const AppHeaderBar({
    super.key,
    this.title,
    this.showClose = true,
    this.leftActions,
    this.rightActions,
    this.height,
    this.color,
    this.backgroundColor,
    this.iconLeft,
    this.iconRight,
    this.onTapRight,
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: height ?? 40.h,
              child: Row(
                children: [
                  Builder(builder: (context) {
                    if (showClose) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: iconLeft ??
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
                    if (leftActions != null) {
                      return Row(children: leftActions!);
                    }

                    return SizedBox(width: 10.w);
                  }),
                ],
              ),
            ),
            Center(
              child: AppText(
                title ?? "",
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                color: contentColor,
              ),
            ),
            iconRight != null
                ? SizedBox(
                    height: height ?? 40.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Builder(builder: (context) {
                          if (showClose) {
                            return GestureDetector(
                              onTap: () {
                                onTapRight ?? Navigator.of(context).pop();
                              },
                              child: iconRight ??
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
                          if (rightActions != null) {
                            return Row(children: rightActions!);
                          }

                          return SizedBox(width: 10.w);
                        }),
                      ],
                    ),
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height ?? 40.h);
}
