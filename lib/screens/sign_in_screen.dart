import 'package:flutter/material.dart';
import 'package:groceries_task/login/login%20cubit/cubit.dart';
import 'package:groceries_task/login/login%20cubit/states.dart';
import 'package:groceries_task/login/sharedPreferences/cash_helper.dart';
import 'package:groceries_task/screens/app_screen.dart';
import 'package:groceries_task/shared/components.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({Key? key}) : super(key: key);

  var usernameController = TextEditingController();
  var passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AppCubit>(
      create: (context) => AppCubit(),
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {
          if (state is AppSuccessState) {
            if (state.model.userStatusId == 1) {
              CashHelper.saveData(key: 'token', value: state.model.token)
                  .then((value) {
                navigateWithReplacement(context: context, widget: AppScreen());
              });
            }
          }
        },
        builder: (context, state) {
          return Scaffold(
              body: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: SingleChildScrollView(
                    child: Form(
                      key: formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image: AssetImage(
                              'assets/images/logo.png',
                            ),
                            width: 150,
                            height: 150,
                          ),
                          SizedBox(height: 30),
                          Text(
                            'Sign In',
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 24,
                                fontFamily: 'Poppins'),
                          ),
                          SizedBox(height: 20),
                          mainTextField(
                              controller: usernameController,
                              validator: (value) {
                                if (usernameController.text.isEmpty) {
                                  return 'User name is required';
                                }
                                return null;
                              },
                              text: 'User Name',
                              keyboardType: TextInputType.text),
                          SizedBox(height: 15),
                          mainTextField(
                              keyboardType: TextInputType.visiblePassword,
                              controller: passwordController,
                              validator: (value) {
                                if (passwordController.text.isEmpty) {
                                  return 'Password is required';
                                }
                                return null;
                              },
                              text: 'Password'),
                          Container(
                            alignment: Alignment.centerRight,
                            child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  ' forget your password?',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w300),
                                )),
                          ),
                          SizedBox(height: 15),
                          mainButton(
                              text: 'Login',
                              onPressed: () {
                                if (formKey.currentState!.validate()) {
                                  AppCubit.get(context).Login(
                                      username: usernameController.text,
                                      password: passwordController.text);
                                  // print('True user');

                                }
                                return null;
                              })
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                child: Image.asset(
                  'assets/images/plant.png',
                  fit: BoxFit.cover,
                ),
              )
            ],
          ));
        },
      ),
    );
  }
}
