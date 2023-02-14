import 'package:hive/hive.dart';
// import 'package:groceries_task/models/user_model.g.dart';

// part 'user_model.g.dart';

@HiveType(typeId: 1)
class UserModel {
  int? id;
  String? userName;
  String? email;
  String? fullname;
  String? avatarPath;
  int? userStatusId;
  int? rolesId;
  String? token;
  String? lang;
  Patient? patient;

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userName = json['user_name'];
    email = json['email'];
    fullname = json['fullname'];
    avatarPath = json['avatar_path'];
    userStatusId = json['user_status_id'];
    rolesId = json['roles_id'];
    token = json['token'];
    lang = json['lang'];
    patient =
        json['patient'] != null ? new Patient.fromJson(json['patient']) : null;
  }
}

class Patient {
  int? id;
  int? clinicId;
  String? clinicName;
  String? nutritionistName;
  String? nutritionistAvater;
  String? patientNumber;
  int? ssn;
  String? fullName;
  int? genderId;
  String? gender;
  String? dateOfBirth;
  String? maritalStatusId;
  String? phone;
  String? mobile;
  String? address;
  String? notes;
  int? usersId;

  Patient.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    clinicId = json['clinic_id'];
    clinicName = json['clinic_name'];
    nutritionistName = json['nutritionist_name'];
    nutritionistAvater = json['nutritionist_avater'];
    patientNumber = json['patient_number'];
    ssn = json['ssn'];
    fullName = json['full_name'];
    genderId = json['gender_id'];
    gender = json['gender'];
    dateOfBirth = json['date_of_birth'];
    maritalStatusId = json['marital_status_id'];
    phone = json['phone'];
    mobile = json['mobile'];
    address = json['address'];
    notes = json['notes'];
    usersId = json['users_id'];
  }
}
