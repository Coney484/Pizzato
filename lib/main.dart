import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pizzato/Helpers/footer.dart';
import 'package:pizzato/Helpers/headers.dart';
import 'package:pizzato/Helpers/middles.dart';
import 'package:pizzato/Services/manageData.dart';
import 'package:pizzato/Views/splash_screen.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider.value(value: Headers()),
      ChangeNotifierProvider.value(value: MiddleHelpers()),
      ChangeNotifierProvider.value(value: ManageData()),
      ChangeNotifierProvider.value(value: Footers()),
      ],
      child: MaterialApp(
          title: 'Pizzato',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              primarySwatch: Colors.red,
              primaryColor: Colors.redAccent,
              visualDensity: VisualDensity.adaptivePlatformDensity),
          home: SplashScreen()),
    );
  }
}
