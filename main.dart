import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  // Ensure that the Flutter binding is initialized before running the app.
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Personal Expense Tracker',
      theme: ThemeData(
        // Define the default brightness and colors.
        primarySwatch: Colors.teal,
        hintColor: Colors.amber,
        fontFamily: 'Quicksand',
        // Define the default TextTheme. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
        textTheme: ThemeData.light().textTheme.copyWith(
              titleLarge: const TextStyle(
                fontFamily: 'OpenSans',
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
        // Define the default AppBarTheme. Use this to specify the default
        // color, elevation, and text theme for AppBars.
        appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(
            fontFamily: 'OpenSans',
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      // Set the home screen of the app.
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}