import 'dart:convert';

import 'dart:convert';

class Telephone {
  final int ddd;
  final int phone;

  Telephone({
    required this.ddd,
    required this.phone,
  });

  Map<String, dynamic> toMap() {
    return {
      "ddd": ddd,
      "phone": phone,
    };
  }

  String toJson() => jsonEncode(toMap());

  factory Telephone.fromMap(Map<String, dynamic> map) {
    return Telephone(ddd: map["ddd"] ?? 0, phone: map["phone"] ?? 0);
  }

  factory Telephone.fromJson(String json) {
    final jsonMap = jsonDecode(json);
    return Telephone.fromMap(jsonMap);
  }
  factory Telephone.fromJson(String json) {
    final jsonMap = jsonDecode(json);
    return Telephone.fromMap(jsonMap);
  }
}
