import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: Colors.green,
            child: Icon(Icons.account_box),
          ),
        ),
        title: Text("Rest"),
        actions: [
          Container(
            width: 50,
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.all(Radius.circular(12))),
          )
        ],
      ),
    );
  }
}
