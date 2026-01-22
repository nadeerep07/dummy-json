// To parse this JSON data, do
//
//     final users = usersFromJson(jsonString);

// import 'dart:convert';

// Users usersFromJson(String str) => Users.fromJson(json.decode(str));

// String usersToJson(Users data) => json.encode(data.toJson());

// class Users {
//   final List<User> users;
//   final int total;
//   final int skip;
//   final int limit;

//   Users({
//     required this.users,
//     required this.total,
//     required this.skip,
//     required this.limit,
//   });

//   factory Users.fromJson(Map<String, dynamic> json) => Users(
//     users: List<User>.from(json["users"].map((x) => User.fromJson(x))),
//     total: json["total"],
//     skip: json["skip"],
//     limit: json["limit"],
//   );

//   Map<String, dynamic> toJson() => {
//     "users": List<dynamic>.from(users.map((x) => x.toJson())),
//     "total": total,
//     "skip": skip,
//     "limit": limit,
//   };
// }

class User {
  final int id;
  final String firstName;
  final String lastName;
  final String maidenName;
  final int age;
  final String email;
  final String phone;
  final String username;
  final String password;
  final String birthDate;
  final String image;
  final String bloodGroup;
  final double height;
  final double weight;
  final String eyeColor;
  final String ip;
  final String macAddress;
  final String university;
  final String ein;
  final String ssn;
  final String userAgent;

  User({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.maidenName,
    required this.age,
    required this.email,
    required this.phone,
    required this.username,
    required this.password,
    required this.birthDate,
    required this.image,
    required this.bloodGroup,
    required this.height,
    required this.weight,
    required this.eyeColor,

    required this.ip,

    required this.macAddress,
    required this.university,

    required this.ein,
    required this.ssn,
    required this.userAgent,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
    id: json["id"],
    firstName: json["firstName"],
    lastName: json["lastName"],
    maidenName: json["maidenName"],
    age: json["age"],

    email: json["email"],
    phone: json["phone"],
    username: json["username"],
    password: json["password"],
    birthDate: json["birthDate"],
    image: json["image"],
    bloodGroup: json["bloodGroup"],
    height: json["height"]?.toDouble(),
    weight: json["weight"]?.toDouble(),
    eyeColor: json["eyeColor"],
    //  hair: Hair.fromJson(json["hair"]),
    ip: json["ip"],
    // address: Address.fromJson(json["address"]),
    macAddress: json["macAddress"],
    university: json["university"],
    ein: json["ein"],
    ssn: json["ssn"],
    userAgent: json["userAgent"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "firstName": firstName,
    "lastName": lastName,
    "maidenName": maidenName,
    "age": age,
    //   "gender": genderValues.reverse[gender],
    "email": email,
    "phone": phone,
    "username": username,
    "password": password,
    "birthDate": birthDate,
    "image": image,
    "bloodGroup": bloodGroup,
    "height": height,
    "weight": weight,
    "eyeColor": eyeColor,
    //  "hair": hair.toJson(),
    "ip": ip,
    //  "address": address.toJson(),
    "macAddress": macAddress,
    "university": university,
    "ein": ein,
    "ssn": ssn,
    "userAgent": userAgent,
  };
}
