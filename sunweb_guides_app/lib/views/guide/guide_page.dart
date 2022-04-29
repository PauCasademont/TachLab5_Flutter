
import 'package:flutter/material.dart';
import 'package:sunweb_guides_app/models/guide_model.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../app_bar.dart';
import '../../models/customer_model.dart';

class GuidePage extends StatelessWidget {
   GuidePage({Key? key}) : super(key: key);

  final Guide guide = Guide(
    id: '12', username: 'JohnSunweb', name: 'John', surname: 'Sunweb',destinationName: 'Las Palmas', phoneNumber: '+3460000000', email: 'test@sunwebgroup.com', 
    accomodations: ['Coast Hotels','Kings Inn','Small Town B&B']);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
       appBar: BaseAppBar(
          title: Text('Guide'),
          appBar: AppBar()),
      body: SingleChildScrollView(

        child:  Container(
        color: Color.fromRGBO(0, 119, 136, 0.25),
        child: Column(     
          children: [        
            const SizedBox(
              height: 15,
            ),
             const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/icon-guide.png'),

          ),
        SizedBox(height: 20),
            Text(
              "${guide.name} ${guide.surname}",
              style: const TextStyle(
                fontSize: 25.0,
                letterSpacing: 2.0,
                fontWeight: FontWeight.w400
              ),
            ),
            const SizedBox(
              height: 10,
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
             child: Text("Here you will find the information related to the accommodations assigned to you.")),
            Padding(
              
              padding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),

              child: Card(
                margin: EdgeInsets.symmetric(horizontal: 20.0,vertical: 5),
                elevation: 1.0,
                child: Column(children: [
                  
                  ListTile(
                  leading: Icon(Icons.email_outlined),
                  title: Text(guide.email)  
                  ),
                  Divider(thickness: 1),
                  
                  
                  ListTile(
                  leading: Icon(Icons.phone_outlined),
                  title: Text(guide.phoneNumber)  
                  ),                
                  Divider(thickness: 1),
                  ListTile(
                  leading: Icon(Icons.location_on_outlined),
                  title: Text("Destination: ${guide.destinationName}")  
                  ),
                 
                  ExpansionTile(
                    leading: Icon(Icons.holiday_village_outlined),
                    title: Text("Your assigned accomodations"),
                   children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.house_outlined),
                      title: Text('Coast Hotels'),
                    ),
                     Divider(thickness: 1),
                      ListTile(
                        leading: Icon(Icons.house_outlined),
                      title: Text('Rotterdam Hotels'),
                    ),
                     Divider(thickness: 1),
                      ListTile(
                        leading: Icon(Icons.house_outlined),
                      title: Text('NH Hotels'),
                    ),
                     Divider(thickness: 1),
                  ],
                  ),

                  
                ],
              ),
            ),
            ),
             const SizedBox(
              height: 100,
            ),
          
           
            
                    
         
          ],          
        ),
      )
    ))
         
      
      
      
    );    
  }
}