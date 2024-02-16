import 'package:flutter/material.dart';
import 'package:starsync/screens/auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:starsync/screens/chat.dart';
import 'package:starsync/screens/splash.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options:DefaultFirebaseOptions.currentPlatform,
  );
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
            seedColor: Color.fromARGB(253, 247, 209, 239)),
      ),
      home: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder:(ctx,snapshot)
        {
          if(snapshot.connectionState==ConnectionState.waiting)
          {
            return const SplashScreen();
          }
          if(snapshot.hasData)
          {
            return const ChatScreen(); //that will be change to flow screen
          }
          return const AuthScreen();
        }
      )
    );
  }
}