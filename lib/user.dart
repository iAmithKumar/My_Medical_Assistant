class User {
  String name;
  String age;
  String gender;
  String phoneno;
  String Bloodtype;
  String weight;
  String height;
  String medicalinfo;

  User();

  User.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        age = json['age'],
        gender = json['gender'],
        phoneno = json['Phone-number'],
        Bloodtype = json['Blood-Type'],
        weight = json['weight'],
        height = json['height'],
        medicalinfo = json['Medical-info'];

  Map<String, dynamic> toJson() => {
    'name': name,
    'age': age,
    'gender': gender,
    'phone-number': phoneno,
    'Blood-Type': Bloodtype,
    'weight': weight,
    'height': height,
    'medical-info': medicalinfo,
  };
}
