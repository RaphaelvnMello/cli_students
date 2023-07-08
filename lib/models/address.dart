import 'dart:convert';

import 'city.dart';
import 'telephone.dart';

class Address {
  final String street;
  final int number;
  final int zipCode;
  final City city;
  final Telephone phone;

  Address({
    required this.street,
    required this.number,
    required this.zipCode,
    required this.city,
    required this.phone,
  });

  Map<String, dynamic> toMap() {
    return {
      "street": street,
      "number": number,
      "zipCode": zipCode,
      "city": city,
      "phone": phone,
    };
  }

  String toJson() => jsonEncode(toMap());

  factory Address.fromMap(Map<String, dynamic> map) {
    return Address(
      street: map["street"] ?? "",
      number: map["number"] ?? 0,
      zipCode: map["zipCode"] ?? 0,
      city: City.fromMap(map["city"] ?? {}),
      phone: Telephone.fromMap(map["phone"] ?? {}),
    );
  }

  factory Address.fromJson(String json) {
    final jsonMap = jsonDecode(json);
    return Address.fromMap(jsonMap);
  }
}
