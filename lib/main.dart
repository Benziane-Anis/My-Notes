import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:my_notes/screens/edit.dart';
import 'package:my_notes/screens/home.dart';
import 'constentes.dart';

void main()async {
  await Hive.initFlutter();
  await Hive.openBox(notesBox);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      initialRoute: "/",
      routes: {
        "/": (context)=> const Home(),
        "Edit": (context)=> const Edit(),

      },


    );

  }
}

