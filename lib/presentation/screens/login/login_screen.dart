import 'package:bccp/presentation/common_widgets/app_label_text_field.dart';
import 'package:bccp/presentation/common_widgets/app_page.dart';
import 'package:bccp/presentation/screens/login/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../application/constants/app_colors.dart';
import '../../../application/enums/load_status.dart';
import '../../../domain/models/arguments/home_tab_arguments.dart';
import '../../../gen/assets.gen.dart';
import '../../common_widgets/app_button.dart';
import '../../common_widgets/app_dialog.dart';
import '../../common_widgets/app_text.dart';
import '../../routes/route_name.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late LoginCubit _cubit;

  @override
  void initState() {
    super.initState();
    _cubit = BlocProvider.of<LoginCubit>(context);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _cubit.close();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MultiBlocListener(
        listeners: [
          BlocListener<LoginCubit, LoginState>(
            listenWhen: (prev, curr) =>
                prev.username != curr.username ||
                prev.password != curr.password,
            listener: (context, state) {
              _cubit.enableButton();
            },
          ),
          BlocListener<LoginCubit, LoginState>(
              listenWhen: (prev, curr) => prev.loginStatus != curr.loginStatus,
              listener: (context, state) => {
                    if (state.loginStatus == LoadStatus.failure)
                      {
                        AppDialog.showFailureDialog(
                          context,
                          title: 'Đăng nhập thất bại',
                          content: state.loginMessage,
                          action: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 50.w),
                            child: AppButton(
                              title: 'Đồng ý',
                              fontSize: 14.sp,
                              color: AppColors.main,
                              textColor: AppColors.white,
                              fontWeight: FontWeight.w600,
                              height: 40.h,
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ),
                        )
                      }
                    else if (state.loginStatus == LoadStatus.success)
                      {
                        Navigator.of(context).pushNamedAndRemoveUntil(
                          RouteName.homeTab,
                          (route) => false,
                          arguments: const HomeTabArguments(index: 0),
                        )
                      }
                  }),
        ],
        child: BlocBuilder<LoginCubit, LoginState>(
          buildWhen: (prev, curr) => prev.loginStatus != curr.loginStatus,
          builder: (context, state) => AppPage(
            isLoading: state.loginStatus == LoadStatus.loading,
            body: Container(
              width: 1.sw,
              height: 1.sh,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(Assets.images.backgroundLogin.path),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    bottom: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(44.w),
                            topRight: Radius.circular(44.w)),
                      ),
                      width: 1.sw,
                      height: 0.65.sh,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 18.w),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 60.h,
                            ),
                            AppText(
                              'Đăng nhập',
                              fontSize: 24.sp,
                              color: AppColors.blue8C,
                              fontWeight: FontWeight.w500,
                            ),
                            AppText(
                              'Chào mừng quay trở lại!',
                              fontSize: 16.sp,
                              color: AppColors.black,
                              fontWeight: FontWeight.w400,
                            ),
                            BlocBuilder<LoginCubit, LoginState>(
                              buildWhen: (prev, curr) =>
                                  prev.username != curr.username ||
                                  prev.usernameErrorMessage !=
                                      curr.usernameErrorMessage,
                              builder: (context, state) => AppLabelTextField(
                                hintText: 'Tên đăng nhập',
                                errorMessage: state.usernameErrorMessage,
                                onChanged: (value) {
                                  _cubit.onChangeUsername(value);
                                },
                              ),
                            ),
                            BlocBuilder<LoginCubit, LoginState>(
                              bloc: _cubit,
                              buildWhen: (prev, curr) =>
                                  prev.password != curr.password ||
                                  prev.showPassword != curr.showPassword,
                              builder: (context, state) => AppLabelTextField(
                                hintText: 'Mật khẩu',
                                obscureText: !state.showPassword,
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    _cubit.onChangeShowPassword(
                                        !state.showPassword);
                                  },
                                  child: state.showPassword
                                      ? Assets.icons.eyeShow.svg()
                                      : Assets.icons.eyeHidden.svg(),
                                ),
                                onChanged: (value) {
                                  _cubit.onChangePassword(value);
                                },
                              ),
                            ),
                            SizedBox(
                              height: 12.h,
                            ),
                            BlocBuilder<LoginCubit, LoginState>(
                              bloc: _cubit,
                              buildWhen: (prev, curr) =>
                                  prev.isChecked != curr.isChecked,
                              builder: (context, state) => Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          _cubit.onCheck(!state.isChecked);
                                        },
                                        child: state.isChecked
                                            ? Assets.icons.check.svg()
                                            : Assets.icons.unCheck.svg(),
                                      ),
                                      SizedBox(width: 4.w),
                                      AppText('Ghi nhớ tài khoản',
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w400,
                                          color: AppColors.black)
                                    ],
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.of(context)
                                          .pushNamed(RouteName.forgotPassword);
                                    },
                                    child: AppText(
                                      'Quên mật khẩu?',
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.blue8C,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 18.h),
                            BlocBuilder<LoginCubit, LoginState>(
                              bloc: _cubit,
                              buildWhen: (prev, curr) =>
                                  prev.isEnabled != curr.isEnabled,
                              builder: (context, state) => AppButton(
                                onPressed: () {
                                  _cubit.login();
                                },
                                title: 'Đăng nhập',
                                isEnable: state.isEnabled,
                                color: AppColors.main,
                                fontSize: 14.sp,
                                textColor: AppColors.blue45,
                                fontWeight: FontWeight.w600,
                                radius: 12.w,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 1.sh * 0.29,
                    child: SizedBox(
                      width: 100.w,
                      height: 100.h,
                      child: CircleAvatar(
                        backgroundColor: AppColors.greyFB,
                        child: SizedBox(
                          width: 64.w,
                          height: 64.h,
                          child: Padding(
                            padding: EdgeInsets.all(8.w),
                            child: Assets.icons.logo.svg(),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
