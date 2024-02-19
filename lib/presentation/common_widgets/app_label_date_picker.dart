import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_holo_date_picker/flutter_holo_date_picker.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '/application/constants/app_colors.dart';
import '/gen/assets.gen.dart';
import '/presentation/common_widgets/app_button.dart';
import '/presentation/common_widgets/app_text.dart';

class AppLabelDatePicker extends StatefulWidget {
  final String label;
  final DateTime? defaultValue;
  final String? errorMessage;
  final Function(DateTime value)? onChanged;

  const AppLabelDatePicker({
    super.key,
    required this.label,
    this.defaultValue,
    this.errorMessage,
    this.onChanged,
  });

  @override
  State<AppLabelDatePicker> createState() => _AppLabelDatePickerState();
}

class _AppLabelDatePickerState extends State<AppLabelDatePicker> {
  late ValueNotifier<DateTime> selectedDate;

  void showDatePickerDialog() {
    DateTime currentDate = selectedDate.value;

    final datePickerDialog = Dialog(
      insetPadding: EdgeInsets.all(24.w),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          color: AppColors.white,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AppText(
              tr("yourDateOfBirth"),
              fontSize: 17.sp,
              color: AppColors.black,
              fontWeight: FontWeight.w700,
            ),
            DatePickerWidget(
              firstDate: DateTime(1990),
              lastDate: DateTime(DateTime.now().year, 12, 30),
              initialDate: currentDate,
              dateFormat: 'dd-MM-yyyy',
              pickerTheme: DateTimePickerTheme(
                backgroundColor: AppColors.white,
                itemTextStyle: GoogleFonts.manrope(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.black,
                ),
              ),
              onChange: (DateTime date, list) {
                currentDate = date;
              },
              looping: true,
            ),
            Row(
              children: [
                Expanded(
                  child: AppButton(
                    title: tr("cancel"),
                    fontSize: 14.sp,
                    color: AppColors.pinkD1,
                    textColor: AppColors.main,
                    fontWeight: FontWeight.w600,
                    height: 40.h,
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
                SizedBox(width: 15.w),
                Expanded(
                  child: ValueListenableBuilder(
                    valueListenable: selectedDate,
                    builder: (_, value, __) => AppButton(
                      title: tr("agree"),
                      fontSize: 14.sp,
                      color: AppColors.main,
                      textColor: AppColors.white,
                      fontWeight: FontWeight.w600,
                      height: 40.h,
                      onPressed: () {
                        selectedDate.value = currentDate;
                        widget.onChanged?.call(currentDate);
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );

    showDialog(
      context: context,
      useRootNavigator: false,
      builder: (_) => datePickerDialog,
    );
  }

  @override
  void initState() {
    super.initState();
    selectedDate = ValueNotifier(widget.defaultValue ?? DateTime.now());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppColors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppText(widget.label,
              fontSize: 14.sp,
              fontWeight: FontWeight.w700,
              color: AppColors.black),
          SizedBox(height: 8.h),
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: showDatePickerDialog,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.w),
                color: AppColors.greyF5,
              ),
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 15.h),
              child: Row(
                children: [
                  Assets.icons.chart.svg(
                    width: 20.r,
                    height: 20.r,
                    colorFilter: const ColorFilter.mode(
                        AppColors.gray9F, BlendMode.srcIn),
                  ),
                  SizedBox(width: 8.w),
                  Expanded(
                    child: ValueListenableBuilder(
                      valueListenable: selectedDate,
                      builder: (_, value, __) => AppText(
                        DateFormat("dd-MM-yyyy").format(value),
                        fontSize: 14.sp,
                        color: AppColors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          if (widget.errorMessage?.isNotEmpty == true) ...[
            SizedBox(height: 5.h),
            AppText(
              widget.errorMessage!,
              fontSize: 13.sp,
              fontWeight: FontWeight.w400,
              color: AppColors.main,
            )
          ]
        ],
      ),
    );
  }
}
