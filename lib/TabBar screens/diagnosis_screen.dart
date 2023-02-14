import 'package:flutter/material.dart';
import 'package:groceries_task/shared/components.dart';
import 'package:hexcolor/hexcolor.dart';

class DiagnosisScreen extends StatelessWidget {
  DiagnosisScreen({Key? key}) : super(key: key);

  List<String> imagesList = [
    'diagnosisDate.png',
    'currentWeight.png',
    'theLongth.png',
    'injuryType.png',
    'activityLevel.png',
    'injuryType.png',
    'activityLevel.png',
  ];

  List<String> titles = [
    'Diagnosis Date',
    'Current Weight',
    'The Longth',
    'Injury Type',
    'Activity Level',
    'Fat Percentage',
    'Pregnancy Status'
  ];
  List<String> subTitles = [
    '28-02-2022',
    '48 Kg',
    '165',
    'Effective',
    'Advanced',
    '0 %',
    '1 Years'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              children: [
                mainArrows(
                    border: Border.all(color: Colors.grey, width: 1.5),
                    icon: Icons.arrow_back_ios_new_outlined,
                    iconColor: Colors.grey),
                SizedBox(width: 20),
                mainArrows(
                    border: null,
                    icon: Icons.arrow_forward_ios_outlined,
                    color: HexColor('#40A76A'),
                    iconColor: Colors.white),
              ],
            ),
            SizedBox(height: 9),
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
                          titles.length,
                          (index) => buildListTiles(
                              index: index,
                              imagePath:
                                  'assets/images/iconsPictures/PersonListView2/${imagesList[index]}',
                              title: titles[index],
                              subtitle: subTitles[index]))),
                ),
              ),
            ),
          ],
        ),
      ),
    );
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
  //               'assets/images/iconsPictures/PersonListView2/${imagesList[index]}'),
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
