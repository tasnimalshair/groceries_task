import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

Widget mainTextField(
        {required TextEditingController? controller,
        required String? Function(String?)? validator,
        required String text,
        required TextInputType? keyboardType}) =>
    TextFormField(
      controller: controller,
      validator: validator,
      keyboardType: keyboardType,
      cursorColor: HexColor('#40A76A'),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 1, horizontal: 15),
        hintText: text,
        filled: true,
        fillColor: Colors.grey[200],
        hintStyle: TextStyle(color: Colors.grey),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(width: 0, style: BorderStyle.none)),
      ),
    );

Widget mainButton(
        {required String text, required void Function()? onPressed}) =>
    Row(
      children: [
        Expanded(
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(double.infinity, 50),
                  primary: HexColor('#40A76A')),
              onPressed: onPressed,
              child: Text(text,
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      fontFamily: 'Poppins'))),
        )
      ],
    );

void navigateWithReplacement(
        {required BuildContext context, required Widget widget}) =>
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => widget,
        ));

Widget mainArrows(
        {required BoxBorder? border,
        required IconData? icon,
        Color? color,
        required Color? iconColor}) =>
    Container(
      width: 55,
      height: 55,
      decoration: BoxDecoration(
          color: color,
          shape: BoxShape.rectangle,
          border: border,
          borderRadius: BorderRadius.circular(10)),
      child: Icon(
        icon,
        color: iconColor,
      ),
    );

Widget buildListTiles(
        {required int index,
        required String imagePath,
        required String title,
        required String subtitle}) =>
    ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Container(
        height: 50,
        width: 50,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(10),
            shape: BoxShape.rectangle),
        child: Image(
          image: AssetImage(imagePath),
        ),
      ),
      title: Text(
        title,
        style: TextStyle(
            fontSize: 11,
            color: Colors.grey,
            letterSpacing: -0.3,
            fontWeight: FontWeight.w200),
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(
            fontSize: 13, letterSpacing: -0.3, fontWeight: FontWeight.w400),
      ),
    );
