import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants/global_variable.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  const CustomTextField({super.key, required this.controller, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        border:const OutlineInputBorder(
          borderSide: BorderSide(
            color: GlobalVariable.primaryColor
          )
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: GlobalVariable.primaryColor
          )
        )
      ),
      validator: (value){
        if (value == null || value.isEmpty) {
          return 'Enter your $hintText';
        }
        return null;
      },
    );
  }
}
