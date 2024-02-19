import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../application/constants/app_colors.dart';
import '../../application/constants/app_constants.dart';
import '../../gen/assets.gen.dart';

class DropdownCustom extends StatefulWidget {
  final String hintText;
  final List<String> list;
  const DropdownCustom({
    super.key,
    required this.hintText,
    required this.list,
  });

  @override
  State<DropdownCustom> createState() => _DropdownCustomState();
}

class _DropdownCustomState extends State<DropdownCustom> {
  @override
  Widget build(BuildContext context) {
    String dropdownValue = widget.list.first;

    return Container(
      width: 1.sw,
      decoration: BoxDecoration(
        color: AppColors.white,
        border: Border.all(width: 1.w, color: AppColors.greyE5),
        borderRadius: BorderRadius.circular(8.w),
      ),
      child: DropdownButton<String>(
        value: dropdownValue,
        underline: const SizedBox(),
        icon: Assets.icons.angleDown.svg(color: AppColors.grey9D),
        hint: Text(
          widget.hintText,
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
            color: AppColors.grey9D,
          ),
        ),
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        isExpanded: true,
        items: widget.list.map((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        onChanged: (String? value) {
          setState(() {
            dropdownValue = value!;
          });
        },
      ),
    );
  }
}
