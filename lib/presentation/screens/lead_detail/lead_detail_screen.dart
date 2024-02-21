import 'package:bccp/presentation/common_widgets/app_header_bar.dart';
import 'package:flutter/material.dart';

import '../../../gen/assets.gen.dart';

class LeadDetailScreen extends StatefulWidget {
  const LeadDetailScreen({super.key});

  @override
  State<LeadDetailScreen> createState() => _LeadDetailScreenState();
}

class _LeadDetailScreenState extends State<LeadDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppHeaderBar(
        iconLeft: Assets.icons.angleRight.svg(),
        iconRight: Assets.icons.threeDot.svg(),
      ),
      body: SafeArea(
        child: Column(
          children: [

          ],
        ),
      ),
    );
  }
}
