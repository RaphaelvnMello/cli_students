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
}
