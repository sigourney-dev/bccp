import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '/application/constants/app_colors.dart';

class AppSwitch extends StatelessWidget {
  final bool value;
  final VoidCallback? onToggle;

  const AppSwitch({super.key, this.value = false, this.onToggle});

  @override
  Widget build(BuildContext context) {
    return FlutterSwitch(
      width: 55.w,
      height: 28.w,
      value: value,
      toggleSize: 24.w,
      toggleColor: AppColors.white,
      inactiveColor: AppColors.greyF5,
      activeColor: AppColors.main,
      onToggle: (value) {
        onToggle?.call();
      },
    );
  }
}
