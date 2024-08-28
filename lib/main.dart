import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:shopping_list/widgets/grocery_list.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyDiwr4ff2PHXv2rQ_627kAIve6_lkxHVvo",
      appId: "1:392264614365:android:46857c8900c254b12fb634",
      messagingSenderId: "392264614365",
      projectId: "demoproject-e5651",
      storageBucket: "demoproject-e5651.appspot.com",
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Groceries',
      theme: ThemeData.dark().copyWith(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 147, 229, 250),
          brightness: Brightness.dark,
          surface: const Color.fromARGB(255, 42, 51, 59),
        ),
        scaffoldBackgroundColor: const Color.fromARGB(255, 50, 58, 60),
      ),
      home: const GroceryList(),
    );
  }
}
