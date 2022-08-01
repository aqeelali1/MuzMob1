import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class favorite extends StatelessWidget {
  const favorite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(40, 79, 83, 106),
        title: Text(
          'MuzMob',
        ),
      ),
      backgroundColor: Color.fromARGB(255, 51, 55, 66),
      body: Container(child: Column(children: [Text('favorite')])),
    );
  }
}
