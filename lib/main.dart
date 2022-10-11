import 'package:flutter/material.dart';
import 'package:animated_button/button.dart';

void main() {
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
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isFollowing = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Button(
        isFollowing: isFollowing,
      )), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
