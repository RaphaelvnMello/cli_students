import 'city.dart';
import 'telephone.dart';

class Adress {
  String street;
  int number;
  int zipCode;
  City city;
  Telephone phone;

  Adress(
      {required this.street,
      required this.number,
      required this.zipCode,
      required this.city,
      required this.phone});
}
