import 'package:flutter/material.dart';
import 'package:flutter_application_breakfast/models/catagory_model.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CatagoryModel> categories = [];

  void getAllCategory() {
    categories = CatagoryModel.getCategory();
  }

  @override
  Widget build(BuildContext context) {
    getAllCategory();
    return Scaffold(
      // backgroundColor: const Color.fromARGB(255, 209, 165, 180),
      appBar: appBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _serachfield(),
          const SizedBox(height: 15),
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  "Category",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 15),
              Container(
                  height: 150,

                  // color: Colors.red, 
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) =>
                          const SizedBox(width: 25),
                      itemCount: categories.length,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 100,
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: categories[index].boxColor),
                          child: Column(
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                ),
                               child: SvgPicture.asset(categories[index].iconPath),
                              )
                            ],
                          ),
                        );
                      }))
            ],
          )
        ],
      ),
    );
  }

  Container _serachfield() {
    return Container(
      child: const TextField(
        decoration: InputDecoration(
          filled: true,
          hintText: 'Search  Pancake',
          hintStyle: TextStyle(
              color: Color.fromARGB(240, 116, 115, 114), fontSize: 15),
        ),
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      backgroundColor: Colors.white, // Changez ici
      title: const Text(
        'Breakfast',
        style: TextStyle(
          color: Colors
              .black, // Changez également la couleur du texte si nécessaire
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
        ),
      ),
      actions: [
        GestureDetector(
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
          ),
        ),
      ],
    );
  }
}
