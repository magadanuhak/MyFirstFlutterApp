import 'package:first_flutter/screens/home.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Daniel's first Flutter app",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch:  Colors.yellow,
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      home: const HomeScreen(),
    );
  }
}