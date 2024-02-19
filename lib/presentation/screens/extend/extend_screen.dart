import 'package:flutter/material.dart';

class ExtendScreen extends StatefulWidget {
  const ExtendScreen({super.key});

  @override
  State<ExtendScreen> createState() => _ExtendScreenState();
}

class _ExtendScreenState extends State<ExtendScreen> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(child: Text('Extend'));
  }
}
