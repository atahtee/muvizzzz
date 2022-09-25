import 'package:flutter/material.dart';
import 'package:muvizz/core/app_route_name.dart';
import 'package:muvizz/theme/apptheme.dart';

import 'core/app_route.dart';
import 'feature/movie_booking_screen.dart';
import 'homepage.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movie UI',
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.dark,
      initialRoute: AppRouteName.home,    
      onGenerateRoute: AppRoute.generate,
    );
  }
}
