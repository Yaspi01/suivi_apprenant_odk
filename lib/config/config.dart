import 'package:flutter/material.dart';

Widget customTextField(
  TextEditingController controller,
  String message,
  TextInputType text,
  Icon icon,
  String hintText,
) {
  return Container(
    alignment: Alignment.centerLeft,
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
        boxShadow: const [
          BoxShadow(color: Colors.black26, blurRadius: 6, offset: Offset(0, 2))
        ]),
    height: 60,
    child: TextFormField(
      controller: controller,
      validator: (val) {
        if (val == null || val.isEmpty) {
          return message;
        }
      },
      style: const TextStyle(color: Colors.black87),
      decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: const EdgeInsets.only(top: 14),
          prefixIcon: icon,
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.black38)),
    ),
  );
}
