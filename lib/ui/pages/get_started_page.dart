import 'package:flutter/material.dart';
import 'package:sma_dennis/ui/widgets/custom_button.dart';
import '../../shared/theme.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                opacity: 0.8,
                image: AssetImage(
                  'assets/image_getStartedSMA.jpg',
                )
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'PT. Samudera Mulia Abadi',
                  style: blackTextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: semiBold,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'A Mining Contracting Company : \n Deliver a Win-Win Solution to Achieve Goals, Together with The Client As A Partner',
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: light
                  ),
                  textAlign: TextAlign.center,
                ),
                CustomButton(
                  title: 'Get Started',
                  width: 220,
                  margin: EdgeInsets.only(top: 50, bottom: 80),
                  onPressed: () {
                    Navigator.pushNamed(context, '/sign-up');
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}