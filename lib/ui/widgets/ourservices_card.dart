import 'package:flutter/material.dart';
import 'package:sma_dennis/models/ourservices.model.dart';
import '../../shared/theme.dart';

class OurserviceCard extends StatelessWidget {

  final OurServicesModel ourservices;

  const OurserviceCard(
    this.ourservices, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 323,
      margin: EdgeInsets.only(
        left: defaultMargin,
      ),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 180,
            height: 220,
            margin: EdgeInsets.only(bottom: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              image: DecorationImage(
                image: NetworkImage(
                  ourservices.imageUrl
              ))
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  ourservices.title,
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: medium
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  ourservices.subtitle,
                  style: greyTextStyle.copyWith(
                    fontWeight: light,
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