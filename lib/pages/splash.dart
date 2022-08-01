import 'package:flutter/material.dart';
import 'package:muzmob/theme/colors.dart';

import 'onbording.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (_) => onboarding()));
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 51, 55, 66),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Spacer(),
              Image.asset(
                'assets/images/logo.png',
                height: 350,
                width: 350,
              ),
              Image.asset(
                'assets/images/name.png',
                height: 250,
                width: 250,
              ),
              CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(grey),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
