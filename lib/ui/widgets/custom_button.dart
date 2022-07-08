import 'package:flutter/material.dart';
import 'package:sma_dennis/shared/theme.dart';

class CustomButton extends StatelessWidget {

  final String title;
  final double width;
  final Function() onPressed;
  final EdgeInsets margin;

  const CustomButton({
    Key? key,
    required this.title,
    this.width = double.infinity,
    this.margin = EdgeInsets.zero,
    required this.onPressed, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 50,
      margin: margin,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: kPrimaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(defaultRadius)
          )
        ),
        child: Text(
          title,
          style: whiteTextStyle.copyWith(
            fontSize: 18,
            fontWeight: medium
          ),
        ),
      ),
    );
  }
}