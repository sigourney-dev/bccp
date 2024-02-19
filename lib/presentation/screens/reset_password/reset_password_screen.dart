import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:bccp/application/constants/app_colors.dart';
import 'package:bccp/presentation/common_widgets/app_button.dart';
import 'package:bccp/presentation/common_widgets/app_header_bar.dart';
import 'package:bccp/presentation/common_widgets/app_label_text_field.dart';
import '../../../gen/assets.gen.dart';
import '../../common_widgets/app_text.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const AppHeaderBar(
          title: 'Lấy lại mật khẩu',
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    AppText(
                      'Nhập mã code được gửi vào email của bạn',
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.black,
                    ),
                    SizedBox(height: 12.h),
                    AppLabelTextField(hintText: 'Mã code'),
                    AppLabelTextField(hintText: 'Mật khẩu mới'),
                    AppLabelTextField(hintText: 'Nhập lại mật khẩu mới'),
                    SizedBox(
                      height: 18.h,
                    ),
                    AppButton(
                      title: 'Gửi',
                      color: AppColors.main,
                      fontSize: 14.sp,
                      textColor: AppColors.black,
                      width: 1.sw / 2,
                      fontWeight: FontWeight.w600,
                    ),
                  ],
                ),
                Assets.images.forgetPassword.image(),
              ],
            ),
          ),
        ));
  }
}
