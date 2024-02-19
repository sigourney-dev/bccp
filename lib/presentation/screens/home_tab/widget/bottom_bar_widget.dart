import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../application/constants/app_colors.dart';
import '../../../../domain/models/dto/home_tab_model.dart';
import 'bottom_bar_item.dart';

class BottomBarWidget extends StatefulWidget {
  final int currentIndex;
  final List<HomePageModel> listPage;
  final Function(int index) onTap;
  const BottomBarWidget({
    super.key,
    required this.currentIndex,
    required this.listPage,
    required this.onTap,
  });

  @override
  State<BottomBarWidget> createState() => _BottomBarWidgetState();
}

class _BottomBarWidgetState extends State<BottomBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.sw,
      padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewPadding.bottom > 0 ? 25.h : 10.h),
      decoration: const BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.06),
              blurRadius: 15.0,
              offset: Offset(0.0, 0.05))
        ],
        color: AppColors.greyFB,
      ),
      child: Container(
        height: 70,
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.greyF5),
          borderRadius: BorderRadius.all(Radius.circular(30.w)),
        ),
        child: Row(
          children: widget.listPage.mapIndexed((index, item) {
            return GestureDetector(
              onTap: () {
                widget.onTap.call(index);
              },
              behavior: HitTestBehavior.opaque,
              child: BottomBarItemWidget(
                item: item,
                isSelected: widget.currentIndex == index,
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
