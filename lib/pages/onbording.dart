import 'package:flutter/material.dart';
import 'package:muzmob/mothds/onbordinginfo.dart';
import 'package:muzmob/pages/tagspages.dart';

import '../mothds/slide.dart';
import '../widget/dot.dart';

class onboarding extends StatefulWidget {
  const onboarding({Key? key}) : super(key: key);

  @override
  State<onboarding> createState() => _onboardingState();
}

class _onboardingState extends State<onboarding> {
  int active = 0;

  PageController pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 51, 55, 66),
        body: PageView.builder(
          controller: pageController,
          itemCount: onboardinglest.length,
          onPageChanged: (index) {
            setState(() {
              active = index;
            });
          },
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: TextButton(
                          style: ElevatedButton.styleFrom(
                            fixedSize: Size(65, 65),
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(10), // <-- Radius
                            ),
                          ),
                          onPressed: () {
                            Navigator.of(context).pushAndRemoveUntil(
                                MaterialPageRoute(
                                    builder: (context) => TabsPages()),
                                (route) => false);
                          },
                          child: const Text('Skip',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 117, 123, 133),
                              )),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  slide(
                    image: onboardinglest[index].image,
                    title: onboardinglest[index].title,
                    subtitle: onboardinglest[index].subtitle,
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                              onboardinglest.length,
                              (index) => dot(
                                    index: index,
                                    active: active,
                                  )),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 117, 123, 133),
                              fixedSize: Size(80, 40),
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(15), // <-- Radius
                              ),
                            ),
                            onPressed: () {
                              if (active < onboardinglest.length - 1) {
                                pageController.animateToPage(active + 1,
                                    duration:
                                        const Duration(microseconds: 1000),
                                    curve: Curves.easeIn);
                              } else {
                                // ignore: avoid_print
                                Navigator.of(context).pushAndRemoveUntil(
                                    MaterialPageRoute(
                                        builder: (context) => TabsPages()),
                                    (route) => false);
                              }
                            },
                            child: Text(
                              onboardinglest.length - 1 == active
                                  ? 'Start'
                                  : 'Next',
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ));
  }
}
