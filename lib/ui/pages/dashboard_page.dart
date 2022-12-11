import 'package:auto_e_invoice/config/styles/colors/app_colors.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        title: Text(
          'Dashboard',
          style: theme.textTheme.headline1,
        ),
      ),
      body: Center(
        child: Text(
          'Dashboard Page',
          style:
              theme.textTheme.headline1?.copyWith(fontWeight: FontWeight.w900),
        ),
      ),
    );
  }
}
