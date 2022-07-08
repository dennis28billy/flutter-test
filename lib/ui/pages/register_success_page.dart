import 'package:flutter/material.dart';
import 'package:sma_dennis/ui/widgets/custom_button.dart';
import '../../shared/theme.dart';

class RegisterSuccessPage extends StatelessWidget {
  const RegisterSuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget title(){
      return Container(
        margin: EdgeInsets.only(top: 80),
        child: Text(
          'Register Success',
          style: blackTextStyle.copyWith(
            fontSize: 32,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget subtitle(){
      return Container(
        margin: EdgeInsets.only(top: 10, right: 20, left: 20),
        child: Text(
          'Now, you can start to use \nthis application fully. Enjoy it!',
          style: greyTextStyle.copyWith(
            fontSize: 16,
            fontWeight: light,
          ),
          textAlign: TextAlign.center,
        ),
      
      );
    }

    Widget startButton(){
      return CustomButton(
        width: 220,
        margin: EdgeInsets.only(top: 50),
        title: 'Go to Home',
        onPressed: () {
          Navigator.pushNamedAndRemoveUntil(context, '/main', (route) => false);
        },
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            title(),
            subtitle(),
            startButton()
        ]),
      ),
    );
  }
}