import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sma_dennis/cubit/auth_cubit.dart';
import '../pages/get_started_page.dart';
import '../../shared/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

@override
  void initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 3), () {

      User? user = FirebaseAuth.instance.currentUser;

      if(user == null){
        Navigator.pushNamedAndRemoveUntil(context, '/get-started', (route) => false);
      }
      else{
        context.read<AuthCubit>().getCurrentUser(user.uid);
        Navigator.pushNamedAndRemoveUntil(context, '/main', (route) => false);
      }

      
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 120, 
              height: 120,
              margin: EdgeInsets.only(bottom: 10), 
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/image_ptsma.png'
                  ),
                ),
              ),
            ),
            Text(
              'PT. SMA',
              style: whiteTextStyle.copyWith(
                fontSize: 32,
                fontWeight: semiBold,
                letterSpacing: 4,
              ),
            ),
          ],
        )
      ),
    );
  }
}