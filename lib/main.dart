import 'package:dio/src/dio.dart';
import 'package:flutter/material.dart';
import 'package:news/service/new_service.dart';
import 'package:news/views/home_page.dart';

void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NewsApp',
      debugShowCheckedModeBanner: false,
      home: HomePage(),

    );
  }
}
