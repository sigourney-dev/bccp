import 'package:bccp/domain/models/arguments/lead_detail_arguments.dart';
import 'package:bccp/presentation/common_widgets/app_header_bar.dart';
import 'package:bccp/presentation/screens/lead_detail/lead_detail_cubit.dart';
import 'package:bccp/presentation/screens/lead_detail/widget/information_detail.dart';
import 'package:bccp/presentation/screens/lead_detail/widget/more_information.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../application/constants/app_colors.dart';
import '../../../di.dart';
import '../../../gen/assets.gen.dart';

class LeadDetailScreen extends StatefulWidget {
  final LeadDetailArguments arguments;
  const LeadDetailScreen({super.key, required this.arguments});

  @override
  State<LeadDetailScreen> createState() => _LeadDetailScreenState();
}

class _LeadDetailScreenState extends State<LeadDetailScreen> {
  final _leadDetailCubit = getIt<LeadDetailCubit>();

  @override
  void initState() {
    super.initState();
    _leadDetailCubit.getLeadDetail(widget.arguments.leadId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppHeaderBar(
        iconLeft: Assets.icons.angleLeft.svg(),
        iconRight: Assets.icons.threeDot.svg(),
      ),
      body: BlocBuilder<LeadDetailCubit, LeadDetailState>(
        bloc: _leadDetailCubit,
        buildWhen: (prev, curr) => prev.getDetail != curr.getDetail,
        builder:(context, state) => Container(
          height: 1.sh,
          color: AppColors.white,
          child: SafeArea(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Divider(
                    height: 24.0,
                    thickness: 6.0,
                    color: AppColors.greyF5,
                  ),
                  Column(
                    children: [
                      InformationDetail(title: 'Loại hình khách hàng', content: state.leadDetail?.customerKind ?? ''),
                      InformationDetail(title: 'Tên liên hệ', content: state.leadDetail?.customerName ?? ''),
                      InformationDetail(title: 'Tên công ty', content: state.leadDetail?.companyName ?? ''),
                      InformationDetail(title: 'Số điện thoại', content: state.leadDetail?.phone ?? ''),
                      InformationDetail(title: 'Nhân viên bán hàng', content: state.leadDetail?.email ?? ''),
                    ],
                  ),
                  Divider(
                    height: 24.0,
                    thickness: 6.0,
                    color: AppColors.greyF5,
                  ),
                  // MoreInformation(title: 'Thông tin mở rộng')
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
