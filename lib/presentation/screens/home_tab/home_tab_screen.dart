import 'package:flutter/material.dart';

import 'package:bccp/presentation/screens/account/account_screen.dart';
import 'package:bccp/presentation/screens/extend/extend_screen.dart';
import 'package:bccp/presentation/screens/home_tab/widget/bottom_bar_widget.dart';
import 'package:bccp/presentation/screens/lead/lead_screen.dart';
import 'package:bccp/presentation/screens/opportunity/opportunity_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../application/constants/app_colors.dart';
import '../../../domain/models/arguments/home_tab_arguments.dart';
import '../../../domain/models/dto/home_tab_model.dart';
import '../../../gen/assets.gen.dart';
import '../home/home_screen.dart';

class HomeTabScreen extends StatefulWidget {
  final HomeTabArguments arguments;
  const HomeTabScreen({super.key, required this.arguments});

  @override
  State<HomeTabScreen> createState() => _HomeTabScreenState();
}

class _HomeTabScreenState extends State<HomeTabScreen> {
  late PageController controller;
  late ValueNotifier<int> currentIndex;

  final listPages = [
    HomePageModel(
      name: "Trang chủ",
      selectedIconUrl: Assets.icons.homeSelected.path,
      unselectedIconUrl: Assets.icons.home.path,
      child: const HomeScreen(),
    ),
    HomePageModel(
      name: "Tiềm năng",
      selectedIconUrl: Assets.icons.activitySelected.path,
      unselectedIconUrl: Assets.icons.activity.path,
      child: const LeadScreen(),
    ),
    HomePageModel(
      name: "Cơ hội",
      selectedIconUrl: Assets.icons.threeUserSelected.path,
      unselectedIconUrl: Assets.icons.threeUser.path,
      child: const OpportunityScreen(),
    ),
    HomePageModel(
      name: "Mở rộng",
      selectedIconUrl: Assets.icons.categorySelected.path,
      unselectedIconUrl: Assets.icons.category.path,
      child: const ExtendScreen(),
    ),
    HomePageModel(
      name: "Tài khoản",
      selectedIconUrl: Assets.icons.accountSelected.path,
      unselectedIconUrl: Assets.icons.account.path,
      child: const AccountScreen(),
    ),
  ];

  @override
  void initState() {
    super.initState();
    currentIndex = ValueNotifier<int>(widget.arguments.index);
    controller = PageController(initialPage: widget.arguments.index);
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(
        children: [
          Expanded(
            child: PageView(
              physics: const NeverScrollableScrollPhysics(),
              controller: controller,
              children: listPages
                  .map((item) => SafeArea(bottom: false, child: item.child))
                  .toList(),
            ),
          ),
          ValueListenableBuilder(
            valueListenable: currentIndex,
            builder: (_, value, __) => Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.w),
              child: BottomBarWidget(
                currentIndex: value,
                listPage: listPages,
                onTap: (index) {
                  currentIndex.value = index;
                  controller.jumpToPage(index);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
