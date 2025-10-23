import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Medical Center Dashboard'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('Scaffold', style: TextStyle(fontSize: 18)),
      ),
    );
  }
}
