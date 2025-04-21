import 'package:achiiv/routing/router.dart';
import 'package:achiiv/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Achieve());
}

class Achieve extends StatelessWidget {
  const Achieve({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AchiivApp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.pink,
          primary: const Color.fromARGB(255, 37, 48, 98),
          onSurface: const Color.fromARGB(255, 37, 48, 98),
        ),
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}
