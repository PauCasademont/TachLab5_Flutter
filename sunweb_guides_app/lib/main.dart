import 'package:flutter/material.dart';
import 'package:sunweb_guides_app/views/login/login_page.dart';
import 'package:sunweb_guides_app/views/menu/menu_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      /*theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.red,
      ),
      home: MenuPage(),*/
       home: Scaffold(
        appBar: AppBar(
          title: const Text('Sunweb Guide Tool'),
          backgroundColor: const Color.fromRGBO(0,119,136,1),
        ),
        body:  LoginPage(),
      ),
    );
  }
}



