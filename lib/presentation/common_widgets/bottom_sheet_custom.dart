import 'package:bccp/presentation/common_widgets/app_label_text_field.dart';
import 'package:bccp/presentation/common_widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../application/constants/app_colors.dart';
import '../../gen/assets.gen.dart';

class BottomSheetCustom extends StatefulWidget {
  final String hintText;
  final List<String> list;
  const BottomSheetCustom({
    super.key,
    required this.hintText,
    required this.list,
  });

  @override
  State<BottomSheetCustom> createState() => _BottomSheetCustomState();
}

class _BottomSheetCustomState extends State<BottomSheetCustom> {
  int _selectedIndex = 0;
  String value = '';
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 12.h),
        Container(
          width: double.infinity,
          height: 50.h,
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.greyE5),
            color: AppColors.white,
            borderRadius: BorderRadius.all(Radius.circular(8.r)),
          ),
          child: GestureDetector(
            onTap: () {
              showModalBottomSheet<void>(
                context: context,
                builder: (BuildContext context) {
                  return Container(
                    height: 1.sh / 2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(8.r),
                        topLeft: Radius.circular(8.r),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(12.w),
                      child: ListView.builder(
                        itemCount: widget.list.length,
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(
                            title: AppText(
                              widget.list[index],
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              color: AppColors.black,
                            ),
                            onTap: () {
                              setState(() {
                                _selectedIndex = index;
                                value = widget.list[index];
                              });
                              Navigator.of(context).pop();
                            },
                          );
                        },
                      ),
                    ),
                  );
                },
              );
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppText(
                    value != '' ? value : widget.hintText,
                    fontSize: value != '' ? 14.sp : 12.sp,
                    color: value != '' ? AppColors.black : AppColors.grey9D,
                    fontWeight: value != '' ? FontWeight.w600 : FontWeight.w400,
                  ),
                  Assets.icons.angleDown.svg(color: AppColors.grey9D),
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 12.h),
      ],
    );
  }
}
