// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

class MainTextField extends StatelessWidget {
  final String hintText;
  @override
  const MainTextField({
    required this.hintText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          hintText: hintText,
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: Colors.white, width: 1.0),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: Colors.white, width: 1.0),
          ),
          hintStyle: const TextStyle(color: Colors.grey),
          filled: true,
          fillColor: Colors.white,
          contentPadding: EdgeInsets.symmetric(vertical: size.height * 0.02)),
    );
  }
}
