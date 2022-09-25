import 'package:flutter/material.dart';
import 'package:muvizz/Model/movie_detail.dart';
import 'package:muvizz/core/app_route_name.dart';
import 'package:muvizz/homepage.dart';

import '../feature/movie_booking_screen.dart';

class AppRoute {
  static Route<dynamic>? generate(RouteSettings settings) {
    switch (settings.name) {
      case AppRouteName.home:
        return MaterialPageRoute(
          builder: (_) => const HomePage(),
          settings: settings,
        );

      case AppRouteName.movieDetail:
        return PageRouteBuilder(
          settings: settings,
          pageBuilder: (_, __, ___) => const MovieDetail(),
          transitionDuration: const Duration(milliseconds: 200),
          transitionsBuilder: (_, animation, __, child) {
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(1, 0),
                end: Offset.zero,
              ).animate(animation),
              child: child,
            );
          },
        );
         case AppRouteName.movieBooking:
        return PageRouteBuilder(
          settings: settings,
          pageBuilder: (_, __, ___) => const MovieBookingScreen(),
          transitionDuration: const Duration(milliseconds: 200),
          transitionsBuilder: (_, animation, __, child) {
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(1, 0),
                end: Offset.zero,
              ).animate(animation),
              child: child,
            );
          },
        );
    
    }
    return null;
  }
}
