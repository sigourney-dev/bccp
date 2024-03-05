import 'package:bccp/application/constants/app_colors.dart';
import 'package:bccp/application/constants/app_constants.dart';
import 'package:bccp/presentation/common_widgets/app_header_bar.dart';
import 'package:bccp/presentation/common_widgets/app_label_text_field.dart';
import 'package:bccp/presentation/common_widgets/app_text.dart';
import 'package:bccp/presentation/common_widgets/bottom_sheet_custom.dart';
import 'package:bccp/presentation/screens/create_new_lead/create_lead_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../gen/assets.gen.dart';
import '../../common_widgets/app_button.dart';

class CreateLeadScreen extends StatefulWidget {
  const CreateLeadScreen({super.key});

  @override
  State<CreateLeadScreen> createState() => _CreateLeadScreenState();
}

class _CreateLeadScreenState extends State<CreateLeadScreen> {
  late CreateLeadCubit _createLeadCubit;

  @override
  void initState() {
    super.initState();
    _createLeadCubit = BlocProvider.of<CreateLeadCubit>(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppHeaderBar(
        title: 'Tạo mới Lead',
        iconLeft: Assets.icons.angleLeft.svg(),
        iconRight: Text(
          'Lưu',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16.sp,
            color: AppColors.blueAC,
          ),
        ),
        onTapRight: () {},
      ),
      body: BlocBuilder<CreateLeadCubit, CreateLeadState>(
        bloc: _createLeadCubit,
        builder: (context, state) => Container(
          color: AppColors.blueFC,
          child: SafeArea(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Container(
                    width: 1.sw,
                    color: AppColors.orangeD1,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 18.w),
                      child: Column(
                        children: [
                          SizedBox(height: 20.h),
                          Row(
                            children: [
                              AppText(
                                'Điền thông tin bắt buộc',
                                fontSize: 14.sp,
                                color: AppColors.black,
                                fontWeight: FontWeight.w600,
                              ),
                              AppText(
                                ' (*):',
                                fontSize: 14.sp,
                                color: AppColors.red5A,
                                fontWeight: FontWeight.w600,
                              ),
                            ],
                          ),
                          const AppLabelTextField(
                            hintText: 'Tên liên hệ',
                            backgroundColor: AppColors.orangeD1,
                          ),
                          const AppLabelTextField(
                            hintText: 'Email',
                            backgroundColor: AppColors.orangeD1,
                          ),
                          const AppLabelTextField(
                            hintText: 'Số điện thoại',
                            backgroundColor: AppColors.orangeD1,
                          ),
                          SizedBox(height: 12.h),
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    height: 8.0,
                    thickness: 8.h,
                    color: AppColors.white,
                  ),
                  Container(
                    color: AppColors.blueFC,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 18.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 20.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AppText(
                                'Thêm thông tin mở rộng',
                                fontSize: 14.sp,
                                color: AppColors.black,
                                fontWeight: FontWeight.w600,
                              ),
                              GestureDetector(
                                onTap: () {
                                  _createLeadCubit
                                      .onChangeExtend(!state.isExtended);
                                },
                                child: state.isExtended
                                    ? Assets.icons.angleUp.svg()
                                    : Assets.icons.angleDown.svg(),
                              ),
                            ],
                          ),
                          Container(
                            child: state.isExtended
                                ? Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 12.h),
                                      AppText(
                                        'Thông tin khách hàng:',
                                        fontSize: 12.sp,
                                        color: AppColors.black,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      const BottomSheetCustom(
                                        hintText: 'Danh xưng',
                                        list: AppConstants.addressing,
                                      ),
                                      const AppLabelTextField(
                                        hintText: 'Chức vụ',
                                        backgroundColor: AppColors.blueFC,
                                      ),
                                      const AppLabelTextField(
                                        hintText: 'Email',
                                        backgroundColor: AppColors.blueFC,
                                      ),
                                      const AppLabelTextField(
                                        hintText: 'Điện thoại bàn',
                                        backgroundColor: AppColors.blueFC,
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 8.h),
                                        child: Row(
                                          children: [
                                            GestureDetector(
                                              onTap: () {
                                                _createLeadCubit
                                                    .onChangeRejectCall(
                                                        !state.isRejectCall);
                                              },
                                              child: state.isRejectCall
                                                  ? Assets.icons.check.svg()
                                                  : Assets.icons.unCheck.svg(),
                                            ),
                                            SizedBox(
                                              width: 4.w,
                                            ),
                                            AppText(
                                              'Từ chối cuộc gọi',
                                              fontSize: 14.sp,
                                              color: AppColors.black,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 8.h),
                                        child: Row(
                                          children: [
                                            GestureDetector(
                                              onTap: () {
                                                _createLeadCubit
                                                    .onChangeRejectEmail(
                                                        !state.isRejectEmail);
                                              },
                                              child: state.isRejectEmail
                                                  ? Assets.icons.check.svg()
                                                  : Assets.icons.unCheck.svg(),
                                            ),
                                            SizedBox(
                                              width: 4.w,
                                            ),
                                            AppText(
                                              'Từ chối email',
                                              fontSize: 14.sp,
                                              color: AppColors.black,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ],
                                        ),
                                      ),
                                      const BottomSheetCustom(
                                        hintText: 'Nguồn',
                                        list: AppConstants.salesChannel,
                                      ),
                                      const AppLabelTextField(
                                        hintText: 'Ngày sinh',
                                        backgroundColor: AppColors.blueFC,
                                      ),
                                      const BottomSheetCustom(
                                        hintText: 'Trạng thái',
                                        list: AppConstants.status,
                                      ),
                                      AppText(
                                        'Thông tin công ty:',
                                        fontSize: 12.sp,
                                        color: AppColors.black,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      const AppLabelTextField(
                                        hintText: 'Tên công ty',
                                        backgroundColor: AppColors.blueFC,
                                      ),
                                      const AppLabelTextField(
                                        hintText: 'Mã số thuế',
                                        backgroundColor: AppColors.blueFC,
                                      ),
                                      const BottomSheetCustom(
                                        hintText: 'Ngành nghề',
                                        list: AppConstants.status,
                                      ),
                                      const BottomSheetCustom(
                                        hintText: 'Quy mô công ty',
                                        list: AppConstants.companySize,
                                      ),
                                      const AppLabelTextField(
                                        hintText: 'Website',
                                        backgroundColor: AppColors.blueFC,
                                      ),
                                      const AppLabelTextField(
                                        hintText: 'Doanh thu hàng năm',
                                        backgroundColor: AppColors.blueFC,
                                      ),
                                      AppText(
                                        'Thông tin mô tả:',
                                        fontSize: 12.sp,
                                        color: AppColors.black,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      const AppLabelTextField(
                                        hintText: 'Loại khách hàng',
                                        backgroundColor: AppColors.blueFC,
                                      ),
                                      const AppLabelTextField(
                                        hintText: 'Loại hình khách hàng',
                                        backgroundColor: AppColors.blueFC,
                                      ),
                                      const BottomSheetCustom(
                                        hintText: 'Đánh giá',
                                        list: AppConstants.ranked,
                                      ),
                                      const AppLabelTextField(
                                        hintText: 'Doanh số dự kiến',
                                        backgroundColor: AppColors.blueFC,
                                      ),
                                      SizedBox(
                                        height: 8.h,
                                      ),
                                      AppText(
                                        'Đối thủ cạnh tranh: ',
                                        fontSize: 12.sp,
                                        color: AppColors.black,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          AppLabelTextField(
                                            width: 1.sw / 3 * 1.5,
                                            hintText: 'ĐTCT',
                                            backgroundColor: AppColors.blueFC,
                                          ),
                                          AppLabelTextField(
                                            width: 1.sw / 3,
                                            hintText: 'Thị phần (%)',
                                            backgroundColor: AppColors.blueFC,
                                          ),
                                        ],
                                      ),
                                      const AppLabelTextField(
                                        hintText: 'Nội dung bưu gửi',
                                        backgroundColor: AppColors.blueFC,
                                      ),
                                      const BottomSheetCustom(
                                        hintText: 'Loại hàng hoá',
                                        list: AppConstants.typesOfCommodities,
                                      ),
                                      const BottomSheetCustom(
                                        hintText: 'Nhóm dịch vụ',
                                        list: AppConstants.serviceGroup,
                                      ),
                                      const BottomSheetCustom(
                                        hintText: 'Dịch vụ',
                                        list: AppConstants.loaiDichVu,
                                      ),
                                      const BottomSheetCustom(
                                        hintText: 'Dịch vụ GTGT',
                                        list: AppConstants.loaiDichVu,
                                      ),
                                      const BottomSheetCustom(
                                        hintText: 'Kênh bán hàng chính',
                                        list: AppConstants.salesChannel,
                                      ),
                                      const BottomSheetCustom(
                                        hintText: 'Hướng chuyển',
                                        list: AppConstants.deliveryDirection,
                                      ),
                                    ],
                                  )
                                : SizedBox(
                                    height: 0.h,
                                  ),
                          ),
                        ],
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
