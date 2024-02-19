import 'package:bccp/presentation/common_widgets/app_label.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../application/constants/app_colors.dart';
import '../../../../di.dart';
import '../../../../gen/assets.gen.dart';
import '../../../common_widgets/app_text.dart';
import '../home_cubit.dart';

class Chart extends StatefulWidget {
  const Chart({super.key});

  final Color traditional = AppColors.green8F;
  final Color ecommerce = AppColors.blueE0;
  final Color international = AppColors.orange69;

  @override
  State<Chart> createState() => _ChartState();
}

class _ChartState extends State<Chart> {
  final _homeCubit = getIt<HomeCubit>();

  @override
  void initState() {
    super.initState();
    _homeCubit.getDashboard();
  }

  // @override
  // void dispose() {
  //   super.dispose();
  //   _homeCubit.close();
  // }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 12.h),
          BlocBuilder<HomeCubit, HomeState>(
            bloc: _homeCubit,
            buildWhen: (prev, curr) =>
                prev.dashboardStatus != curr.dashboardStatus,
            builder: (context, state) => Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppLabel(
                    label: "Leads",
                    number: '${state.leadTotal}',
                    borderColor: AppColors.blueAC),
                AppLabel(
                    label: "Deals",
                    number: "${state.opportunityTotal}",
                    borderColor: AppColors.orange1D),
                AppLabel(
                    label: "Accounts",
                    number: "${state.accountTotal}",
                    borderColor: AppColors.green32),
              ],
            ),
          ),
          SizedBox(height: 36.h),
          AppText(
            "Số lượng Lead",
            fontSize: 14.sp,
            color: AppColors.black,
            fontWeight: FontWeight.w600,
          ),
          SizedBox(height: 12.h),
          AspectRatio(
            aspectRatio: 1.8,
            child: LayoutBuilder(
              builder: (context, constraints) {
                final barsSpace = 20.0 * constraints.maxWidth / 400;
                final barsWidth = 20.0 * constraints.maxWidth / 400;
                return BarChart(
                  BarChartData(
                    alignment: BarChartAlignment.spaceAround,
                    barTouchData: BarTouchData(
                      enabled: true,
                    ),
                    titlesData: FlTitlesData(
                      show: true,
                      bottomTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          reservedSize: 24,
                          getTitlesWidget: bottomTitles,
                        ),
                      ),
                      leftTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          reservedSize: 24,
                          getTitlesWidget: leftTitles,
                        ),
                      ),
                      topTitles: const AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),
                      rightTitles: const AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),
                    ),
                    gridData: const FlGridData(
                      show: true,
                      drawVerticalLine: true,
                      verticalInterval: 0.125,
                    ),
                    borderData: FlBorderData(
                      show: false,
                      // border: ,
                    ),
                    groupsSpace: barsSpace,
                    barGroups: getData(barsWidth, barsSpace),
                  ),
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Assets.icons.dotTraditional.svg(
                    width: 8.r,
                    height: 8.r,
                  ),
                  SizedBox(width: 4.w),
                  const AppText("KH truyền thống",
                      fontSize: 12, color: AppColors.black),
                ],
              ),
              Row(
                children: [
                  Assets.icons.dotEcormmer.svg(
                    width: 8.r,
                    height: 8.r,
                  ),
                  SizedBox(width: 4.w),
                  const AppText("TMĐT", fontSize: 12, color: AppColors.black),
                ],
              ),
              Row(
                children: [
                  Assets.icons.dotInternational.svg(
                    width: 8.r,
                    height: 8.r,
                  ),
                  SizedBox(width: 4.w),
                  const AppText("Quốc tế",
                      fontSize: 12, color: AppColors.black),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget bottomTitles(double value, TitleMeta meta) {
    const style = TextStyle(fontSize: 10);
    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: Text('${value.round()}', style: style),
    );
  }

  Widget leftTitles(double value, TitleMeta meta) {
    if (value == meta.max + 5) {
      return Container();
    }
    var style = TextStyle(
      fontSize: 10.sp,
    );
    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: Text(
        meta.formattedValue,
        style: style,
      ),
    );
  }

  List<BarChartGroupData> getData(double barsWidth, double barsSpace) {
    return [
      BarChartGroupData(
        x: 1,
        barsSpace: barsSpace,
        barRods: [
          BarChartRodData(
            toY: 30,
            rodStackItems: [
              BarChartRodStackItem(0, 5, widget.international),
              BarChartRodStackItem(5, 15, widget.ecommerce),
              BarChartRodStackItem(15, 30, widget.traditional),
            ],
            borderRadius: BorderRadius.zero,
            width: barsWidth,
          ),
        ],
      ),
      BarChartGroupData(
        x: 2,
        barsSpace: barsSpace,
        barRods: [
          BarChartRodData(
            toY: 22,
            rodStackItems: [
              BarChartRodStackItem(0, 4, widget.international),
              BarChartRodStackItem(4, 11, widget.ecommerce),
              BarChartRodStackItem(11, 22, widget.traditional),
            ],
            borderRadius: BorderRadius.zero,
            width: barsWidth,
          ),
        ],
      ),
      BarChartGroupData(
        x: 3,
        barsSpace: barsSpace,
        barRods: [
          BarChartRodData(
            toY: 16,
            rodStackItems: [
              BarChartRodStackItem(0, 3, widget.international),
              BarChartRodStackItem(3, 9, widget.ecommerce),
              BarChartRodStackItem(9, 16, widget.traditional),
            ],
            borderRadius: BorderRadius.zero,
            width: barsWidth,
          ),
        ],
      ),
      BarChartGroupData(
        x: 4,
        barsSpace: barsSpace,
        barRods: [
          BarChartRodData(
            toY: 22,
            rodStackItems: [
              BarChartRodStackItem(0, 4, widget.international),
              BarChartRodStackItem(4, 11, widget.ecommerce),
              BarChartRodStackItem(11, 22, widget.traditional),
            ],
            borderRadius: BorderRadius.zero,
            width: barsWidth,
          ),
        ],
      ),
      BarChartGroupData(
        x: 5,
        barsSpace: barsSpace,
        barRods: [
          BarChartRodData(
            toY: 45,
            rodStackItems: [
              BarChartRodStackItem(0, 6, widget.international),
              BarChartRodStackItem(6, 17, widget.ecommerce),
              BarChartRodStackItem(17, 45, widget.traditional),
            ],
            borderRadius: BorderRadius.zero,
            width: barsWidth,
          ),
        ],
      ),
      BarChartGroupData(
        x: 6,
        barsSpace: barsSpace,
        barRods: [
          BarChartRodData(
            toY: 30,
            rodStackItems: [
              BarChartRodStackItem(0, 5, widget.international),
              BarChartRodStackItem(5, 15, widget.ecommerce),
              BarChartRodStackItem(15, 30, widget.traditional),
            ],
            borderRadius: BorderRadius.zero,
            width: barsWidth,
          ),
        ],
      ),
      BarChartGroupData(
        x: 7,
        barsSpace: barsSpace,
        barRods: [
          BarChartRodData(
            toY: 21,
            rodStackItems: [
              BarChartRodStackItem(0, 4, widget.international),
              BarChartRodStackItem(4, 11, widget.ecommerce),
              BarChartRodStackItem(11, 21, widget.traditional),
            ],
            borderRadius: BorderRadius.zero,
            width: barsWidth,
          ),
        ],
      ),
      BarChartGroupData(
        x: 8,
        barsSpace: barsSpace,
        barRods: [
          BarChartRodData(
            toY: 10,
            rodStackItems: [
              BarChartRodStackItem(0, 2, widget.international),
              BarChartRodStackItem(2, 5, widget.ecommerce),
              BarChartRodStackItem(5, 10, widget.traditional),
            ],
            borderRadius: BorderRadius.zero,
            width: barsWidth,
          ),
        ],
      ),
    ];
  }
}
