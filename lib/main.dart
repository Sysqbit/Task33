import 'package:auto_e_invoice/config/router/app_routes.dart';
import 'package:auto_e_invoice/config/styles/theme/app_theme.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Auto E-invoice',
        theme: AppTheme.fromType(ThemeType.light).themeData,
        initialRoute: AppRouter.homePage,
        onGenerateRoute: AppRouter.generateRoute,
      ),
    );
  }
}
