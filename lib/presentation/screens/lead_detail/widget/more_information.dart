import 'package:bccp/application/constants/app_colors.dart';
import 'package:bccp/presentation/common_widgets/app_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MoreInformation extends StatelessWidget {
  final Widget? iconLeft;
  final Widget? iconRight;
  final String title;
  final Function? onTap;

  const MoreInformation({
    super.key,
    this.iconLeft,
    this.iconRight,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18.w),
      child: GestureDetector(
        onTap: () {
          onTap ?? Navigator.of(context).pop();
        },
        child: Row(
          children: [
            iconLeft ?? const SizedBox(),
            AppText(title, fontSize: 14.sp, color: AppColors.black, fontWeight: FontWeight.w600,),
            iconRight ?? const SizedBox(),
          ],
        ),
      ),
    );
  }
}
