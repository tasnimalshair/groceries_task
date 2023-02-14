import 'package:flutter/material.dart';
import 'package:groceries_task/localdata/my_hive.dart';
import 'package:groceries_task/login/sharedPreferences/cash_helper.dart';
import 'package:groceries_task/screens/about_screen.dart';
import 'package:groceries_task/screens/app_screen.dart';
import 'package:groceries_task/TabBar%20screens/diagnosis_screen.dart';
import 'package:groceries_task/screens/sign_in_screen.dart';
import 'shared/constants.dart';
import 'TabBar screens/personal_data_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await MyHive.init();
  await CashHelper.init();
  token = CashHelper.getData(key: 'token');
  Widget startWidget;

  MyHive.box.put('name', 'tasnim');

  if (token != null) {
    startWidget = AppScreen();
  } else {
    startWidget = SignInScreen();
  }
  runApp(MyApp(startWidget: startWidget));
}

class MyApp extends StatelessWidget {
  Widget startWidget;
  MyApp({required this.startWidget});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: startWidget,
      theme: ThemeData(
        textTheme: TextTheme(),
        fontFamily: 'Poppins',
        appBarTheme: AppBarTheme(backgroundColor: Colors.white, elevation: 0),
        scaffoldBackgroundColor: Colors.white,
      ),
    );
  }
}
