import 'package:flutter/material.dart';
import 'package:widgets_app/config/router/app_router.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      //el router para mostrar los screen
      routerConfig: appRouter,
      title: 'Flutter Widgets',
      debugShowCheckedModeBanner: false,
      theme:AppTheme(selectedColor: 4).getTheme(),
      
      
    );
  }
}
