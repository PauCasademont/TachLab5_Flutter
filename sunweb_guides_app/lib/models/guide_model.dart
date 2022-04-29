class Guide {
  String id;
  String username;
  String name;
  String surname;
  String destinationName;
  String phoneNumber;
  String email;
  List<String> accomodations;
  

  Guide(
      {
        required this.id,
        required this.username,
        required this.name,
        required this.surname,
        required this.destinationName,
        required this.phoneNumber,
        required this.email,
        required this.accomodations,
     });

    /*factory Guide.fromJson(Map<String, dynamic> json) {
      return Guide(
   
        id: json['id'],
        username: json['username'],
        name: json['name'],
        destinationName: json['destinationName'],
        phoneNumber: json['phoneNumber'],
        email: json['email']
      );
    }*/
}