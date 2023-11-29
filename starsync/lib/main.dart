import 'package:flutter/material.dart';
import 'package:starsync/screens/auth.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterChat',
      theme: ThemeData().copyWith(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
            seedColor: Color.fromARGB(254, 231, 185, 221)),
      ),
      home: const AuthScreen(),
    );
  }
}