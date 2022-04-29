
import 'package:flutter/material.dart';

import '../../app_bar.dart';
import '../../models/customer_model.dart';

class CustomerPage extends StatelessWidget {
  const CustomerPage({Key? key, required this.customer}) : super(key: key);
  final Customer customer;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
       appBar: BaseAppBar(
          title: Text('Customer'),
          appBar: AppBar()),
      body: Container(
        color: Color.fromRGBO(0, 119, 136, 0.25),
        child: Column(     
          children: [        
            const SizedBox(
              height: 60,
            ),
            Text(
              "${customer.firstname} ${customer.lastname}",
              style: const TextStyle(
                fontSize: 25.0,
                letterSpacing: 2.0,
                fontWeight: FontWeight.w400
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20,horizontal: 150),
              child: Card(
                margin: EdgeInsets.symmetric(horizontal: 20.0,vertical: 8.0),
                elevation: 1.0,
                child: Column(children: [
                  ListTile(
                  leading: Icon(Icons.phone),
                  title: Text(customer.phone)  
                  ),
                  Divider(thickness: 1),
                  ListTile(
                  leading: Icon(Icons.email_outlined),
                  title: Text(customer.email)  
                  ),
                  Divider(thickness: 1),
                  ListTile(
                  leading: Icon(Icons.house_outlined),
                  title: Text(customer.address)  
                  ),
                  Divider(thickness: 1),
                  ListTile(
                  leading: Icon(Icons.luggage_outlined),
                  title: Text("Booking number: ${customer.bookingNumber}")  
                  ),                
                  Divider(thickness: 1),
                  ListTile(
                  leading: Icon(Icons.calendar_month_outlined),
                  title: Text(" Arrival date: ${customer.arrivalDate}")  
                  ),
                  Divider(thickness: 1),
                  ListTile(
                  leading: Icon(Icons.calendar_month_outlined),
                  title: Text(" Departure date: ${customer.departureDate}")  
                  )
                ],
              ),
            ),
            ),
             const SizedBox(
              height: 40,
            ),
            Text(
              customer.hotel,
              style: const TextStyle(
                fontSize: 25.0,
                letterSpacing: 2.0,
                fontWeight: FontWeight.w400
              ),
            ),
             const SizedBox(
              height: 20,
            ),
            Text(
              customer.hotelAddress,
              style: const TextStyle(
                fontSize: 15.0,
                letterSpacing: 2.0,
                fontWeight: FontWeight.w400
              ),
            ),             
            const SizedBox(
              height: 50,
            ),
            const Image(image: AssetImage('assets/acco2.jpg')),
          ],          
        ),
      )
    )
    );    
  }
}