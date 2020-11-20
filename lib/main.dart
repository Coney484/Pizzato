import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pizzato/Views/splash_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pizzato',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        primaryColor: Colors.redAccent,
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      home: SplashScreen()
    );
  }
}
