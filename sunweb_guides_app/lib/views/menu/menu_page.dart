import 'package:flutter/material.dart';
import 'package:sunweb_guides_app/views/customer/customer_list_page.dart';
import 'package:sunweb_guides_app/views/guide/guide_page.dart';
import 'package:sunweb_guides_app/views/login/login_page.dart';

import '../../app_bar.dart';
import '../../models/menu_item_model.dart';

class MenuPage extends StatefulWidget  {

  @override
  State<StatefulWidget> createState() => new _State();
}

  class _State extends State<MenuPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void renderPage(MenuItem menuItem){
    if (menuItem.path == 'CustomersListPage'){

    }
    else {

    }
  }


  @override
  Widget build(BuildContext context) {



    final List<MenuItem> menu = [
      MenuItem(icon: Icons.account_circle_outlined , name: 'My profile', path: 'ProfilePage'),
      MenuItem(icon: Icons.calendar_month_outlined, name: 'My calendar', path: 'CalendarPage'),
      MenuItem(icon: Icons.location_on_outlined, name: 'My destination', path: 'DestinationPage'),
      MenuItem(icon: Icons.supervised_user_circle_outlined, name: 'My customers', path: 'CustomersListPage'),
    ];

   return 
      Scaffold(
        appBar: BaseAppBar(
          title: Text('Menu'),
          appBar: AppBar()),
        body: Container(
              height: MediaQuery.of(context).size.height,
              color: Color.fromRGBO(0, 119, 136, 0.25),
              child: Scrollbar(
              thickness: 3,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      GridView.builder(
                        shrinkWrap: true,
                        physics: BouncingScrollPhysics(),
                        itemCount: menu.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: 1,
                            crossAxisCount: 2,
                            crossAxisSpacing: 4.0,
                            mainAxisSpacing: 4.0),
                        itemBuilder: (BuildContext context, int index) {
                          return Card(
                            elevation: 0.2,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0)),
                            child: InkWell(
                            onTap: () {
                
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                    switch (menu[index].path) {
                      case 'ProfilePage':
                        return GuidePage();
                 
                      case 'CustomersListPage':
                        return CustomerListPage();
                    

                      default:
                        return LoginPage();
                    }
                  }));
                /*Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        GuidePage(),
                  ),
                  
                );*/
              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    menu[index].icon,
                                    size: 40,
                                ),
                                SizedBox(height: 20),
                                Text(
                                  menu[index].name,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black87),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                    SizedBox(height: 50),
                    Center(
                      child: Container(
                        height: 50,
                        width: 100,
                        child:  ElevatedButton(
                        
                        child: Text("Log Out"),
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromRGBO(0, 119, 136, 1), // Background color
                      ),
                        onPressed: (){
                          
                            Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        LoginPage(),
                  ),
                  
                );


                        },
                      ),
                      )
                      
                    
                    ),
                  ],
                ),
              ),
            ),
          )
        )
      )
     ;
  }
}