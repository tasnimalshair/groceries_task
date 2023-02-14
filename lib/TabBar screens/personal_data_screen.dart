import 'package:flutter/material.dart';
import 'package:groceries_task/models/user_model_screen.dart';
import 'package:groceries_task/shared/components.dart';

class PersonalDataScreen extends StatelessWidget {
  PersonalDataScreen({Key? key}) : super(key: key);

  // var userModel = UserModel('Tasnim Alshair', 20, 'Female', 50, 'Effective',
  //     '02-07-2022', 'Accessline', 'Omar Ahmed');
  var data = {
    'Name': 'Tasnim Alshair',
    'Age': '20 Year',
    'Gender': 'Female',
    'Current Weight': '50 Kg',
    'Profile Status': 'Effective',
    'Start Of Treatment': '02-07-2022',
    'Clinic Name': 'Accessline',
    'Specialist Name': 'Omar Ahmed'
  };
  List<String> imagesList = [
    'name.png',
    'age.png',
    'gender.png',
    'currentWeight.png',
    'profileStatus.png',
    'startOfTreatment.png',
    'clinicName.png',
    'specialistName.png'
  ];

  List<String> titles = [
    'Name',
    'Age',
    'Gender',
    'Current Weight',
    'Profile Status',
    'Start Of Treatment',
    'Clinic Name',
    'Specialist Name'
  ];
  List<String> subTitles = [
    'Tasnim Alshair',
    '20 Years',
    'Female',
    '50 Kg',
    'Effective',
    '02-07-2022',
    'Accessline',
    'Omar Ahmed'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(),
        body: Padding(
      padding: const EdgeInsets.only(right: 20, left: 20, bottom: 93),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    elevation: 5,
                    child: Container(
                      height: 330,
                      child: GridView.count(
                          physics: NeverScrollableScrollPhysics(),
                          childAspectRatio: 2 / 0.9,
                          crossAxisCount: 2,
                          padding: EdgeInsets.all(10),
                          children: List.generate(
                              data.length,
                              (index) => buildListTiles(
                                  index: index,
                                  imagePath:
                                      'assets/images/iconsPictures/PersonListView/${imagesList[index]}',
                                  title: titles[index],
                                  subtitle: subTitles[index]))),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              child: Container(
                height: 251,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 12, top: 15),
                      child: Row(
                        children: [
                          Image.asset('assets/images/iconsPictures/icon.png'),
                          SizedBox(
                            width: 5,
                          ),
                          Text('Diet Plan Acheivement',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 14)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15),
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              child: Container(
                height: 334,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 12, top: 15),
                      child: Row(
                        children: [
                          Image.asset('assets/images/iconsPictures/icon.png'),
                          SizedBox(
                            width: 5,
                          ),
                          Text('Daily Caloriy',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 14)),
                        ],
                      ),
                    ),
                    Image.asset('assets/images/circle.png'),
                    Padding(
                      padding: const EdgeInsets.only(right: 16, left: 19),
                      child: Container(
                        height: 20,
                        width: double.infinity,
                        color: Colors.red,
                        child: Row(
                          children: [
                            // ListTile(
                            //     // leading: Container(
                            //     //   decoration:
                            //     //       BoxDecoration(shape: BoxShape.circle),
                            //     // ),
                            //     ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }

  // Widget buildListTiles(index) => ListTile(
  //       contentPadding: EdgeInsets.zero,
  //       leading: Container(
  //         height: 50,
  //         width: 50,
  //         alignment: Alignment.center,
  //         decoration: BoxDecoration(
  //             color: Colors.grey[300],
  //             borderRadius: BorderRadius.circular(10),
  //             shape: BoxShape.rectangle),
  //         child: Image(
  //           image: AssetImage(
  //               'assets/images/iconsPictures/PersonListView/${imagesList[index]}'),
  //         ),
  //       ),
  //       title: Text(
  //         titles[index],
  //         style: TextStyle(
  //             fontSize: 11,
  //             color: Colors.grey,
  //             letterSpacing: -0.3,
  //             fontWeight: FontWeight.w200),
  //       ),
  //       subtitle: Text(
  //         subTitles[index],
  //         style: TextStyle(
  //             fontSize: 13, letterSpacing: -0.3, fontWeight: FontWeight.w400),
  //       ),
  //     );
}
