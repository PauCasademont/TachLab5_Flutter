//import 'dart:ffi';

class Customer {
  
  String firstname;
  String lastname;
  String phone;
  String email;
  String address;
  bool IsOnHolidays;
  bool IsSummer;
  String bookingNumber;
  String hotel;
  String hotelAddress;
  String arrivalDate;
  String departureDate;
  

  Customer(
      {
   
        required this.firstname,
        required this.lastname,
        required this.phone,
        required this.email,
        required this.address,
        required this.IsOnHolidays,
        required this.IsSummer,
        required this.bookingNumber,
        required this.hotel,
        required this.hotelAddress,
        required this.arrivalDate,
        required this.departureDate
     });

    factory Customer.fromJson(Map<String, dynamic> json) {
      return Customer(
   
        firstname: json['firstname'],
        lastname: json['lastname'],
        phone: json['phone'],
        email: json['email'],
        address: json['address'],
        IsOnHolidays: json['IsOnHolidays'] as bool,
        IsSummer: json['IsSummer'] as bool  ,
        bookingNumber: json['bookingNumber'] as String,
        hotel: json['hotel']['name'] as String,
        hotelAddress: json['hotel']['address'] as String,
        arrivalDate: json['date']['arrival'] as String,
        departureDate: json['date']['departure'] as String
      );
  }

}