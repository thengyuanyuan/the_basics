import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:the_basics/locator.dart';
import 'package:the_basics/views/layout_template/layout_template.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Web Basics',
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightGreen),
        primarySwatch: Colors.blue,
        textTheme: Theme.of(context).textTheme.apply(
              fontFamily: 'Open Sans',
            ),
      ),
      home: const LayoutTemplate(),
    );
  }
}
