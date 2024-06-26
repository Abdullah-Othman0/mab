import 'package:flutter/material.dart';
import 'package:mab/shared/styles/colors.dart';
import '../network/local/cache_helper.dart';

void navigateTo(context, widget) =>
    Navigator.push(context, MaterialPageRoute(builder: (context) => widget));

void navigateAndFinish(context, widget) => Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => widget),
      (Route<dynamic> route) => false,
    );

void logout(context) {
  CacheHelper.clearData('token').then((value) {
    if (value) {
      //navigateAndFinish(context, Login());
    }
  });
}

Widget DefaultTextField({
  required String? Function(String?)? fun,
  required TextEditingController controler,
  required String text,
  TextInputType? keyboard,
  bool secure = false,
  IconData? preIcon,
  IconData? sufIcon,
  void Function()? sufPressed,
  void Function()? onTap,
  bool readOnly = false,
}) =>
    TextFormField(
        readOnly: readOnly,
        onTap: onTap,
        validator: fun,
        keyboardType: keyboard,
        controller: controler,
        obscureText: secure,
        decoration: InputDecoration(
          labelStyle: TextStyle(color: kDarkTeal),
          labelText: text,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(color: kDarkTeal)),
          prefixIcon: Icon(preIcon),
          focusColor: kDarkTeal,
          hoverColor: kDarkTeal,
          suffixIcon: IconButton(
            icon: Icon(sufIcon),
            onPressed: sufPressed,
          ),
        ));
Widget defaultbotton({
  Color background = kDarkTeal,
  Color textColor = Colors.white,
  double? width = double.infinity,
  required String text,
  double? radius = 32.0,
  BoxBorder? border,
  double? height = 50,
  required VoidCallback onPress,
  IconData? icon,
}) {
  return Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
      color: background,
      borderRadius: BorderRadius.circular(radius!),
      border: border,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (icon != null)
          Row(
            children: [
              Icon(
                icon,
                color: Colors.white,
              ),
              SizedBox(
                width: 5,
              )
            ],
          ),
        MaterialButton(
          child: Text(
            text.toUpperCase(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: textColor,
            ),
          ),
          onPressed: onPress,
        ),
      ],
    ),
  );
}

Widget pageTitle(title, {color = kDarkBlue}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        title,
        textAlign: TextAlign.center,
        style:
            TextStyle(fontSize: 30, color: color, fontWeight: FontWeight.w500),
      ),
    ],
  );
}
