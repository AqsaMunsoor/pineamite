import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:pineamite/configs/configs.dart';
import 'package:pineamite/router/router.dart';
import 'package:pineamite/router/routes.dart';

void main() => runApp(
  DevicePreview(
    enabled: false,
    builder: (BuildContext context) => const MyApp(),
  ),
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pineamite',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        fontFamily: 'Kuunari',
        useMaterial3: true,
        scaffoldBackgroundColor: AppColors.textDark,
        colorScheme: const ColorScheme.light(primary: AppColors.textDark),
      ),
      routes: appRoutes,
      initialRoute: AppRoutes.home,
      onGenerateRoute: onGenerateRoutes,
    );
  }
}
