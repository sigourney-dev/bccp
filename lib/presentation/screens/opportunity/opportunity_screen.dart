import 'package:flutter/material.dart';

class OpportunityScreen extends StatefulWidget {
  const OpportunityScreen({super.key});

  @override
  State<OpportunityScreen> createState() => _OpportunityScreenState();
}

class _OpportunityScreenState extends State<OpportunityScreen> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(child: Text('Opportunity'));
  }
}
