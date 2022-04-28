import 'dart:ffi';

class Customer {
  
  String firstname;
  String lastname;
  String phone;
  String email;
  String address;
  bool IsOnHolidays;
  bool IsSummer;
  

  Customer(
      {
   
        required this.firstname,
        required this.lastname,
        required this.phone,
        required this.email,
        required this.address,
        required this.IsOnHolidays,
        required this.IsSummer
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
            
      );
  }
}