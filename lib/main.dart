import 'package:academy/screen/signUp/screen1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(backgroundColor: Color.fromARGB(255, 183, 147, 95),
),
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 183, 147, 95)),
        useMaterial3: true,
      ),
      home: const Screen1(),
    );
  }
}
