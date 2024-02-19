import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '/application/constants/app_colors.dart';
import '/presentation/common_widgets/app_text.dart';

class AppLabelTextField extends StatefulWidget {
  final String defaultValue;
  final String hintText;
  final Function(String value)? onChanged;
  final int? maxLine;
  final int? maxLength;
  final TextInputType? keyboardType;
  final bool isRequired;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool enable;
  final bool obscureText;
  final String? errorMessage;
  final Color? backgroundColor;

  const AppLabelTextField({
    Key? key,
    this.defaultValue = "",
    required this.hintText,
    this.onChanged,
    this.maxLength,
    this.maxLine,
    this.keyboardType,
    this.isRequired = false,
    this.suffixIcon,
    this.prefixIcon,
    this.enable = true,
    this.obscureText = false,
    this.errorMessage,
    this.backgroundColor = AppColors.white,
  }) : super(key: key);

  @override
  State<AppLabelTextField> createState() => _AppLabelTextFieldState();
}

class _AppLabelTextFieldState extends State<AppLabelTextField> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.defaultValue);

    _controller.addListener(() {
      widget.onChanged?.call(_controller.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: widget.backgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 8.h),
          TextFormField(
            textAlignVertical: TextAlignVertical.center,
            controller: _controller,
            maxLength: widget.maxLength,
            obscuringCharacter: "•",
            maxLines: widget.obscureText ? 1 : widget.maxLine,
            enabled: widget.enable,
            obscureText: widget.obscureText,
            enableSuggestions: false,
            autocorrect: false,
            decoration: InputDecoration(
              label: AppText(
                widget.hintText,
                fontSize: 12,
                color: AppColors.grey4F,
              ),
              filled: true,
              fillColor: widget.enable ? AppColors.white : AppColors.gray9F,
              counter: const Offstage(),
              contentPadding: EdgeInsets.only(
                  left: 15.w, right: 15.w, top: 15.h, bottom: 15.h),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.w),
                borderSide: const BorderSide(color: AppColors.greyE5),
              ),
              disabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: AppColors.greyE5),
                  borderRadius: BorderRadius.circular(8.w)),
              enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: AppColors.greyE5),
                  borderRadius: BorderRadius.circular(8.w)),
              focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: AppColors.greyE5),
                  borderRadius: BorderRadius.circular(8.w)),
              hintText: widget.hintText,
              hintStyle: GoogleFonts.manrope(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.grey9D),
              suffixIcon: widget.suffixIcon != null
                  ? Padding(
                      padding: EdgeInsets.only(left: 8.w, right: 10.w),
                      child: widget.suffixIcon)
                  : null,
              suffixIconConstraints: BoxConstraints(maxWidth: 38.w),
              prefixIcon: widget.prefixIcon != null
                  ? Padding(
                      padding: EdgeInsets.only(left: 10.w, right: 8.w),
                      child: widget.prefixIcon)
                  : null,
              // prefixIconConstraints: BoxConstraints(maxWidth: 38.w),
              // isDense: true,
            ),
            keyboardType: widget.keyboardType,
            style: GoogleFonts.manrope(
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.black),
          ),
          if (widget.errorMessage?.isNotEmpty == true)
            AppText(
              widget.errorMessage!,
              fontSize: 13.sp,
              fontWeight: FontWeight.w400,
              color: AppColors.red04,
            )
        ],
      ),
    );
  }
}
