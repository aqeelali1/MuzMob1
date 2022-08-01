// ignore: file_names
import 'package:flutter/material.dart';

import 'package:muzmob/pages/onbording.dart';
import 'package:muzmob/pages/splash.dart';

class muzmob extends StatelessWidget {
  const muzmob({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
    );
  }
}
