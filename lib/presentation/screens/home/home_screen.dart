import 'package:bccp/presentation/screens/home/widget/list_job_home.dart';
import 'package:flutter/material.dart';

import '../../../application/constants/app_colors.dart';
import 'package:bccp/presentation/screens/home/widget/app_bar_home.dart';
import 'package:bccp/presentation/screens/home/widget/chart.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppBarHome(),
            Divider(
              height: 24.0,
              thickness: 6.0,
              color: AppColors.greyF5,
            ),
            Chart(),
            Divider(
              height: 24.0,
              thickness: 6.0,
              color: AppColors.greyF5,
            ),
            ListJobHome(),
          ],
        ),
      )),
    );
  }
}
