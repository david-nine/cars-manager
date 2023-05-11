import 'package:app01/pages/car_form.dart';
import 'package:app01/pages/login_page.dart';
import 'package:app01/pages/car_list_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Car",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/login",
      routes: {
        "/login": (_) => LoginPage(),
        "/cars_list": (_) => CarListPage(),
        "/car_form": (_) => CarForm()
      },
    );
  }
}
