import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sunweb_guides_app/models/customer_model.dart';

import '../../app_bar.dart';

class CustomerListPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<CustomerListPage> {

  
  Future<List<Customer>> getCustomers() async{
    final jsonData = await rootBundle.loadString('assets/customers.json');
    final parsedJson = jsonDecode(jsonData).cast<Map<String, dynamic>>();
    return parsedJson.map<Customer>((json) => Customer.fromJson(json)).toList();
  }

   void initState() {
    // TODO: implement initState
    super.initState();

    getCustomers();
  
   }


  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: BaseAppBar(
          title: Text('Customer List'),
          appBar: AppBar()),
      body: Container(
        color: Color.fromRGBO(0, 119, 136, 0.25),
         padding: EdgeInsets.all(20),
         child:  FutureBuilder<List<Customer>>(
           future: getCustomers(),
           builder: (context, snapshot) {
           
              var items = snapshot.data as List<Customer>;
              return ListView.builder(
              shrinkWrap: true, 
              itemCount: snapshot.data == null ? 0 : items.length,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () => (items[index].firstname),
                    child: Column(
                      children: [
                       
                        Container(
                            
                         //color: const Color.fromRGBO(0,119,136,1),
                          //margin: EdgeInsets.all(5),
                          //padding: EdgeInsets.all(5),
                          //alignment: Alignment.topLeft,
                          child: ListTile(
                             leading: 
                             !items[index].IsOnHolidays ?  Icon(Icons.flight_outlined) 
                                : items[index].IsSummer ? Icon(Icons.sunny) 
                                : Icon(Icons.snowboarding_sharp)  ,
                              iconColor: Colors.black,
                              title: Text(
                                "${items[index].firstname} ${items[index].lastname}",
                                style: TextStyle(color: Colors.black),
                                ),
                          )/*Text(
                            "${items[index].firstname} ${items[index].lastname}" ,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),*/
                        ),
                        Divider(thickness: 1)
                      ],
                    ),
                  );
                }
              );
           }
         )
/*
         Column(
           children: [
             ListView.builder(
              shrinkWrap: true, 
              itemCount: _list.length,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () => (_list[index]),
                    child: Column(
                      children: [
                        Text(
                          _list[index].id,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                          ),
                        ),
                        Container(
                          color: Colors.grey,
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(15),
                          alignment: Alignment.center,
                          child: Text(
                            _list[index].firstname,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }
              ),
            
           ]

         ),*/
      )
        
    );
 
  }
}