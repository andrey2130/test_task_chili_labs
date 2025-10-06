import 'package:flutter/material.dart';

class GiftListScreen extends StatefulWidget {
  const GiftListScreen({super.key});

  @override
  State<GiftListScreen> createState() => _GiftListScreenState();
}

class _GiftListScreenState extends State<GiftListScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text('Gift List Screen')));
  }
}
