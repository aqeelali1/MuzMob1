// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:muzmob/theme/colors.dart';

class musicDitail extends StatefulWidget {
  final String title;
  final String description;
  final Color color;
  final String img;
  final String songUrl;
  const musicDitail({
    Key? key,
    required this.title,
    required this.description,
    required this.color,
    required this.img,
    required this.songUrl,
  }) : super(key: key);

  @override
  State<musicDitail> createState() => _musicDitailState();
}

class _musicDitailState extends State<musicDitail> {
  double _currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: back,
      appBar: getAppBar(),
      body: getBody(),
    );
  }

  getAppBar() {
    return AppBar(
      backgroundColor: back,
      elevation: 0,
      actions: [
        IconButton(
            onPressed: null,
            icon: Icon(
              Icons.more_vert_outlined,
              color: white,
            ))
      ],
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
                child: Container(
                  width: size.width - 120,
                  height: size.width - 120,
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        color: widget.color,
                        blurRadius: 80,
                        spreadRadius: 5,
                        offset: Offset(-0, 40))
                  ], borderRadius: BorderRadius.circular(15)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
                child: Container(
                  width: size.width - 60,
                  height: size.width - 60,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(widget.img), fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(15)),
                ),
              )
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Container(
              width: size.width - 80,
              height: 70,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.favorite_outline_rounded,
                      color: white,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          widget.title,
                          style: TextStyle(
                              fontSize: 18,
                              color: white,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          width: 150,
                          child: Text(
                            widget.description,
                            maxLines: 1,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: white.withOpacity(0.5),
                              fontSize: 15,
                            ),
                          ),
                        )
                      ],
                    ),
                    Icon(
                      Icons.more_vert_outlined,
                      color: white,
                    ),
                  ]),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Slider(
              activeColor: white,
              inactiveColor: Color.fromARGB(255, 118, 118, 118),
              value: _currentSliderValue,
              min: 0,
              max: 200,
              onChanged: (value) {
                setState(() {
                  _currentSliderValue = value;
                });
              }),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: null,
                    icon: Icon(
                      Iconsax.shuffle,
                      color: white,
                      size: 25,
                    )),
                IconButton(
                    onPressed: null,
                    icon: Icon(
                      Icons.skip_previous,
                      color: white,
                      size: 35,
                    )),
                IconButton(
                    onPressed: null,
                    icon: Icon(
                      Iconsax.play,
                      color: white,
                      size: 30,
                    )),
                IconButton(
                    onPressed: null,
                    icon: Icon(
                      Icons.skip_next,
                      color: white,
                      size: 35,
                    )),
                IconButton(
                    onPressed: null,
                    icon: Icon(
                      Iconsax.repeat,
                      color: white,
                      size: 25,
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
