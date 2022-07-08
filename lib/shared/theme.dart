import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

double defaultMargin = 24.0;
double defaultRadius = 17.0;

Color kPrimaryColor = Color(0xffC0B21F); // 0x for hex code using, ff for 100% opacity
Color kBlackColor = Color(0xff1F1449); // 0x for hex code using, ff for 100% opacity
Color kWhiteColor = Color(0xffFFFFFF); // 0x for hex code using, ff for 100% opacity
Color kGreyColor = Color(0xff9698A9); // 0x for hex code using, ff for 100% opacity
Color kGreenColor = Color(0xff0EC3AE); // 0x for hex code using, ff for 100% opacity
Color kRedColor = Color(0xffEB70A5); // 0x for hex code using, ff for 100% opacity
Color kBackgroundColor = Color(0xffFAFAFA); // 0x for hex code using, ff for 100% opacity
Color kInactiveColor = Color(0xffDBD7EC); // 0x for hex code using, ff for 100% opacity
Color kTransparentColor = Colors.transparent;

TextStyle blackTextStyle = GoogleFonts.poppins(
  color: kBlackColor,
);
TextStyle whiteTextStyle = GoogleFonts.poppins(
  color: kWhiteColor,
);
TextStyle greyTextStyle = GoogleFonts.poppins(
  color: kGreyColor,
);
TextStyle greenTextStyle = GoogleFonts.poppins(
  color: kGreenColor,
);
TextStyle redTextStyle = GoogleFonts.poppins(
  color: kRedColor,
);
TextStyle brownTextStyle = GoogleFonts.poppins(
  color: kPrimaryColor,
);

FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight extraBold = FontWeight.w800;
FontWeight black = FontWeight.w900;
