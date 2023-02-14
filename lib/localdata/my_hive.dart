// import 'package:hive/hive.dart';
import 'package:groceries_task/models/user_model.dart';
import 'package:groceries_task/models/user_model_screen.dart';
import 'package:hive_flutter/hive_flutter.dart';

class MyHive {
  static late Box box;
  static const _user = 'user';
  // annotations
  //save object async
  //remove object nullable

  static Future init() async {
    await Hive.initFlutter();
    box = await Hive.openBox(_user);
  }

  static Future saveObject(UserModel userModel) async {
    await box.add(userModel);
  }

  //   static Future removeObject(UserModel userModel) async {
  //   await box.(userModel);
  // }
}
