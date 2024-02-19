import 'package:bccp/application/constants/app_constants.dart';
import 'package:bccp/di.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../../application/constants/app_colors.dart';
import '../../../common_widgets/app_text.dart';
import '../home_cubit.dart';

class ListJobHome extends StatefulWidget {
  const ListJobHome({super.key});

  @override
  State<ListJobHome> createState() => _ListJobHomeState();
}

class _ListJobHomeState extends State<ListJobHome> {
  final _homeCubit = getIt<HomeCubit>();
  static const statusArr = AppConstants.statusArr;
  static const pageSize = 10;
  final pageIndex = 1;
  CalendarFormat _calendarFormat = CalendarFormat.week;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  void initState() {
    super.initState();
    _homeCubit.getListTask(pageIndex, pageSize, statusArr,
        DateFormat('dd/MM/yyyy').format(_focusedDay));
  }

  // @override
  // void dispose() {
  //   super.dispose();
  //   _homeCubit.close();
  // }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      bloc: _homeCubit,
      buildWhen: (prev, curr) => prev.taskStatus != curr.taskStatus,
      builder: (context, state) => Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 12.h),
            AppText(
              "Công việc cần làm",
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.black,
            ),
            TableCalendar(
              firstDay: DateTime.utc(2010, 10, 16),
              lastDay: DateTime.utc(2030, 3, 14),
              focusedDay: _focusedDay,
              calendarFormat: _calendarFormat,
              selectedDayPredicate: (day) {
                return isSameDay(_selectedDay, day);
              },
              onDaySelected: (selectedDay, focusedDay) {
                if (!isSameDay(_selectedDay, selectedDay)) {
                  setState(() {
                    _selectedDay = selectedDay;
                    _focusedDay = focusedDay;
                  });
                  _homeCubit.getListTask(pageIndex, pageSize, statusArr,
                      DateFormat('dd/MM/yyyy').format(_selectedDay!));
                }
              },
              onFormatChanged: (format) {
                if (_calendarFormat != format) {
                  setState(() {
                    _calendarFormat = format;
                  });
                }
              },
              onPageChanged: (focusedDay) {
                _focusedDay = focusedDay;
              },
            ),
            Column(
              children: List.generate(
                  state.listTasks.length,
                  (index) => GestureDetector(
                        behavior: HitTestBehavior.opaque,
                        child: Text(state.listTasks[index].description),
                      )),
            ),
          ],
        ),
      ),
    );
  }
}
