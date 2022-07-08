import 'package:flutter/material.dart';

import '../../shared/theme.dart';


class CustomTextFormField extends StatelessWidget {

  final String title;
  final String hintText;
  final bool obscureText;
  final double marginEnd;
  final TextEditingController controller;

  const CustomTextFormField({
    Key? key,
    required this.title,
    required this.hintText,
    this.obscureText = false,
    this.marginEnd = 0.0,
    required this.controller
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom:20 + marginEnd),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
          ),
          SizedBox(
            height: 6,
          ),
          TextFormField(
            cursorColor: kBlackColor,
            obscureText: obscureText,
            controller: controller,
            decoration: InputDecoration(
              hintText: hintText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  defaultRadius
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  defaultRadius
                ),
                borderSide: BorderSide(
                  color: kPrimaryColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}