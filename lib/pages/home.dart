import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color.fromARGB(255, 209, 165, 180),
      appBar: appBar(),
    );
  }

  AppBar appBar() {
    return AppBar(
      
      backgroundColor: const Color.fromARGB(24, 0, 0, 0),
      title: const Text(
        'Breakfast',
        style: TextStyle(
          // color: Colors.pink,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
      leading: GestureDetector(
          onTap: () {
            print("salut");
          },
          child: Container(
            margin: const EdgeInsets.all(15),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: const Color(0xffF7F8F8),
              borderRadius: BorderRadius.circular(10),
            ),
            child: SvgPicture.asset(
              'assets/icons/Arrow.svg',
              width: 10,
              height: 10,
            ),
          )),
      actions :[ GestureDetector(
          onTap: () {
            print("salut");
          },
          child: Container(
            margin: const EdgeInsets.all(25),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: const Color(0xffF7F8F8),
              borderRadius: BorderRadius.circular(10),
            ),
            child: SvgPicture.asset(
              'assets/icons/dots.svg',
              width: 10,
              height: 10,
            ),
          )),
          ],
    );
  }
}
