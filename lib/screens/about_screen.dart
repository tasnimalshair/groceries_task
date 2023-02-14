import 'package:flutter/material.dart';
import 'package:groceries_task/screens/sign_in_screen.dart';
import 'package:groceries_task/shared/components.dart';
import 'package:hexcolor/hexcolor.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage(
                    'assets/images/fruits.png',
                  ),
                  width: double.infinity,
                ),
                Column(
                  children: [
                    Text(
                      'About the app',
                      style: TextStyle(
                          fontSize: 22,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5),
                    Divider(
                        thickness: 1.5,
                        indent: 80,
                        endIndent: 80,
                        color: HexColor('#40A76A')),
                    SizedBox(height: 10),
                    Text(
                      'Aenean sed nibh a magna posuere tempor.\nNunc faucibus pellentesque nunc in aliquet.\nAenean sed nibh a magna posuere tempor.\nDonec congue',
                      style: TextStyle(
                        fontSize: 13,
                        fontFamily: 'Poppins',
                        wordSpacing: 2,
                        color: HexColor('#919191'),
                        height: 1.5,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    mainButton(
                        text: 'Get Started',
                        onPressed: () {
                          navigateWithReplacement(
                              context: context, widget: SignInScreen());
                        }),
                  ],
                ),
              ],
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
  }
}
