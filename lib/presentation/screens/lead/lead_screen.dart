import 'package:bccp/domain/models/arguments/lead_detail_arguments.dart';
import 'package:bccp/presentation/screens/lead/lead_cubit.dart';
import 'package:bccp/presentation/screens/lead/widget/lead_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../application/constants/app_colors.dart';
import '../../../di.dart';
import '../../../gen/assets.gen.dart';
import '../../routes/route_name.dart';

class LeadScreen extends StatefulWidget {
  const LeadScreen({super.key});

  @override
  State<LeadScreen> createState() => _LeadScreenState();
}

class _LeadScreenState extends State<LeadScreen> {
  final _leadCubit = getIt<LeadCubit>();
  static const pageSize = 20;
  final pageIndex = 0;

  @override
  void initState() {
    super.initState();
    _leadCubit.getListLeads(pageIndex, pageSize);
  }

  // @override
  // void dispose() {
  //   super.dispose();
  //   _leadCubit.close();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: BlocBuilder<LeadCubit, LeadState>(
          bloc: _leadCubit,
          buildWhen: (prev, curr) => prev.leadStatus != curr.leadStatus,
          builder: (context, state) => SizedBox(
            height: 0.8.sh,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.w),
              child: Stack(
                children: [
                  Column(
                    children: List.generate(
                        state.listLeads.length,
                        (index) => GestureDetector(
                              onTap: () {
                                Navigator.of(context).pushNamedAndRemoveUntil(
                                    RouteName.leadDetail, (route) => true,
                                    arguments: LeadDetailArguments(
                                        leadId: state.listLeads[index].id));
                              },
                              child: LeadItem(leadItem: state.listLeads[index]),
                            )),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed(RouteName.createLead);
                      },
                      child: CircleAvatar(
                        radius: 24,
                        backgroundColor: AppColors.main,
                        child: Assets.icons.add.svg(),
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
