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

Widget customCard(
    List filteredVariable, Function route, String titre, BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(top: 15, bottom: 5, left: 20, right: 5),
    child: InkWell(
      onTap: () {
        route(context);
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 3,
                  blurRadius: 5)
            ],
            color: Colors.white),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //  List (filteredVariable);
            Text(
              titre,
              style: const TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    ),
  );
}
