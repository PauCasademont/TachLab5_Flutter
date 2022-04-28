import 'package:flutter/material.dart';
import 'package:sunweb_guides_app/views/menu/menu_page.dart';

import '../../app_bar.dart';

class LoginPage extends StatefulWidget  {

  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<LoginPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  
  void _handleLogin(){

  }
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         
        body: Container(
           color: Color.fromRGBO(189, 158, 190, 1),child: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Image(image: AssetImage('assets/download.jpg')),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: const Text(
                      'Welcome to the Guide Toold',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
                    )),
          
                    Container(
                      padding: const EdgeInsets.all(10),
                  child: const Text(
                    'A Sunweb travel guides app to manage '
                  ),
                ),
                Container(
              
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: usernameController,
                    decoration: const InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(),
                      labelText: 'Username',
                    ),
                    
                  ),
                ),
                Container(
                 
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: const InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ),
                Container(
                    height: 60,
                    padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                    child: ElevatedButton(
                      child: const Text('Login'),
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromRGBO(0, 119, 136, 1), // Background color
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => MenuPage()));
                       
                      },
                    )),
                
              ],
            )),
        ),
        );
  }
}
