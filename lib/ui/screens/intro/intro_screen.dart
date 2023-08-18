import 'package:flutter/material.dart';
import 'package:mlmapp/ui/screens/intro/moduleWidgets/page_four.dart';
// import 'package:mlmapp/ui/screens/intro/moduleWidgets/page_one.dart';
import 'package:mlmapp/ui/screens/intro/moduleWidgets/page_three.dart';
import 'package:mlmapp/ui/screens/intro/moduleWidgets/page_two.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  int selectedPage = 0;
  List<Widget> pages = const [
    // PageOne(),
    PageTwo(),
    PageThree(),
    PageFour(),
  ];
  @override
  Widget build(BuildContext context) {
    PageController controller = PageController(initialPage: 0);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView.builder(
            controller: controller,
            itemCount: pages.length,
            onPageChanged: (int page) {
              setState(
                () {
                  selectedPage = page;
                },
              );
            },
            itemBuilder: (context, index) => pages[index],
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            height: 100,
            child: Container(
              margin: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  selectedPage >= 0
                      ? TextButton(
                          onPressed: () {
                            Navigator.pushNamedAndRemoveUntil(
                              context,
                              'login',
                                  (route) => false,
                            );
                          },
                          child: const Text("Skip"),
                        )
                      : Container(),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(
                        pages.length,
                        (index) {
                          return InkWell(
                            onTap: () {
                              controller.animateToPage(
                                index,
                                duration: const Duration(milliseconds: 150),
                                curve: Curves.bounceIn,
                              );
                            },
                            child: Container(
                              height: 10.0,
                              width: 10.0,
                              decoration: BoxDecoration(
                                color: selectedPage == index ? Theme.of(context).primaryColor : Colors.transparent,
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.grey),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      if (selectedPage < pages.length - 1) {
                        setState(() {
                          selectedPage++;
                          controller.nextPage(
                            duration: const Duration(milliseconds: 150),
                            curve: Curves.bounceIn,
                          );
                        });
                      } else {
                        Navigator.pushNamedAndRemoveUntil(
                          context,
                          'login',
                          (route) => false,
                        );
                      }
                    },
                    child: const Text("Next"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
