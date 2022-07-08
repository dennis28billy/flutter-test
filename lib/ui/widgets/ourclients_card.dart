import 'package:flutter/material.dart';
import 'package:sma_dennis/shared/theme.dart';

class Ourclientscard extends StatelessWidget {

  final String name;
  final String city;
  final String imageUrl;

  const Ourclientscard({
    Key? key,
    required this.name,
    required this.city,
    required this.imageUrl
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 16
      ),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(18)
      ),
      child: Row(
        children: [
          Container(
            width: 70,
            height: 70,
            margin: EdgeInsets.only(right: 16),
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  imageUrl
                )
              )
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: medium
                  ),
                ),
                SizedBox(
                  height : 5
                ),
                Text(
                  city,
                  style: greyTextStyle.copyWith(
                    fontWeight: light
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}