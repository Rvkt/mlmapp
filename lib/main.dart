import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// import 'package:'

void main() {
  runApp(const MlmApp());
}

class MlmApp extends StatefulWidget {
  const MlmApp({Key? key}) : super(key: key);

  @override
  State<MlmApp> createState() => _MlmAppState();
}

class _MlmAppState extends State<MlmApp> {
  int selectedPage = 0;
  List<Widget> pages = [
    Container(
      alignment: Alignment.center,
      child: Image.asset('images/start_img1.png'),
    ),
    Container(
      alignment: Alignment.center,
      child: Image.asset('images/start_images (1).png'),
    ),
    Container(
      alignment: Alignment.center,
      child: Image.asset('images/start_images (2).png'),
    ),
    Container(
      alignment: Alignment.center,
      child: Image.asset('images/start_images (3).png'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    PageController _controller = PageController(initialPage: 0);
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            PageView.builder(
              controller: _controller,
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
                    selectedPage != 0
                        ? TextButton(
                            onPressed: () {
                              print("Navigate to login screen");
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
                                _controller.animateToPage(
                                  index,
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.bounceIn,
                                );
                              },
                              child: Container(
                                height: 20.0,
                                width: 20.0,
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
                            print(selectedPage);
                            _controller.nextPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.bounceIn,
                            );
                          });
                        } else {
                          print("Navigate to login screen");
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
      ),
    );
  }
}
