import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../widgets/footer.dart';

import '../widgets/dashboard_body.dart';
import '../widgets/header.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          bottom: false,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 30),
                HeaderTitle(),
                const SizedBox(height: 30),
                DashboardBody(),
                SizedBox(height: 30),
                Footer(),
                SizedBox(height: 25),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
