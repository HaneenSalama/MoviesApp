import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(MoviesApp());
}

class MoviesApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.routeName: (_) => HomeScreen(),
      },
      initialRoute: HomeScreen.routeName,
    );
  }

}
