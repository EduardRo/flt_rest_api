//import 'package:flt_rest_api/views/home_page.dart';
import 'package:flt_rest_api/views/matematicon_page.dart';
//import 'package:flt_rest_api/views/table.dart';
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
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MatematiconPage(),
      //const MyTableWidget(),
      //HomePage(),
    );
  }
}
