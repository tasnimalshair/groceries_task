import 'package:flutter/material.dart';
import 'package:groceries_task/TabBar%20screens/personal_data_screen.dart';

class AppScreen extends StatelessWidget {
  const AppScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Hi,',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                  Image(image: AssetImage('assets/images/hand.png'))
                ],
              ),
              Text(
                'Tasnim Alshair',
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 20),
              // TABBAR
              //  لما تضيفيها شيلي البادنج والسكرول
              // PersonalDataScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
