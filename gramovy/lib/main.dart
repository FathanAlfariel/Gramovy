import 'package:flutter/material.dart';
import 'package:gramovy/Profile/user_preferences.dart';
import 'package:gramovy/main_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await UserPreferences.init();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.getUser();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );  
  }
}

