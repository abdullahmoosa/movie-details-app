import 'package:flutter/material.dart';
import './screen/dashboard_screen.dart';
import './screen/movie_details_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie App',
      theme: ThemeData(
          primarySwatch: Colors.brown, scaffoldBackgroundColor: Colors.white70),
      home: DashboardScreen(),
      routes: {MovieDetailsScreen.routeName: (context) => MovieDetailsScreen()},
    );
  }
}
