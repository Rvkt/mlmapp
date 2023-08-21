import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mlmapp/ui/widgets/custom_appbar.dart';
import 'package:mlmapp/ui/widgets/drawer_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ShoppingScreen extends StatelessWidget {
  const ShoppingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size(double.infinity, kToolbarHeight),
          child: CustomAppbar(
            iconColor: Colors.white,
            title: "Shopping",
            actionsRow: [
              PopupMenuButton(
                icon: const Icon(
                  Icons.notifications,
                  color: Colors.white,
                ),
                position: PopupMenuPosition.under,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0),
                ),
                onSelected: (value) {
                  print(value);
                },
                itemBuilder: (context) => [
                  const PopupMenuItem(
                    value: 1,
                    child: Text("Notification 1"),
                  ),
                  const PopupMenuItem(
                    value: 2,
                    child: Text("Notification 2"),
                  ),
                  const PopupMenuItem(
                    value: 3,
                    child: Text("Notification 3"),
                  ),
                ],
              ),
              PopupMenuButton(
                onSelected: (value) {
                  print(value);
                },
                itemBuilder: (context) => [
                  const PopupMenuItem(
                    value: 1,
                    child: Text("One"),
                  ),
                  const PopupMenuItem(
                    value: 2,
                    child: Text("Two"),
                  ),
                  const PopupMenuItem(
                    value: 3,
                    child: Text("Three"),
                  ),
                ],
              ),
            ],
          ),
        ),
        drawer: const AppDrawer(),
        body: Container(
          alignment: Alignment.center,
          child: const SliderP(),
          // child: const GridB(),
        ),
      ),
    );
  }
}

class SliderP extends StatefulWidget {
  const SliderP({Key? key}) : super(key: key);

  @override
  State<SliderP> createState() => _SliderPState();
}

class _SliderPState extends State<SliderP> {
  int activeIndex = 0;
  final urlImages = [
    'assets/images/test/1.jpg',
    'assets/images/test/2.jpg',
    'assets/images/test/3.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CarouselSlider.builder(
              itemCount: urlImages.length,
              itemBuilder: (context, index, realIndex) {
                final urlImage = urlImages[index];
                return buildImage(urlImage, index);
              },
              options: CarouselOptions(
                height: 200,
                autoPlay: true,
                enableInfiniteScroll: true,
                enlargeCenterPage: false,
                onPageChanged: (index, reason) => setState(() => activeIndex = index),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            buildIndicator()
          ],
        ),
      ),
    );
  }

  Widget buildIndicator() => AnimatedSmoothIndicator(
        effect: const ExpandingDotsEffect(
          dotWidth: 10,
          dotHeight: 5,
          activeDotColor: Colors.blue,
        ),
        activeIndex: activeIndex,
        count: urlImages.length,
      );

  Widget buildImage(String urlImage, int index) => Container(
        margin: const EdgeInsets.all(8.0),
        width: double.maxFinite,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(2, 2),
              blurRadius: 2,
            )
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.asset(
            urlImage,
            fit: BoxFit.cover,
          ),
        ),
      );
}