import 'package:flutter/material.dart';

class CatagoryModel {
  String name;
  String iconPath;
  Color boxColor;
  //  Constructeur
  CatagoryModel(
      {required this.name, required this.iconPath, required this.boxColor});
// methode pour recuperer les category
  static List<CatagoryModel> getCategory() {
    List<CatagoryModel> categories = [];
    categories.add(
      CatagoryModel(
          name: 'Salade',
          iconPath: 'assets/icons/plate.svg',
          boxColor: Color(0xff9A3FD)),
    );
    categories.add(
      CatagoryModel(
          name: 'Cake',
          iconPath: 'assets/icons/pancakes.svg',
          boxColor: Color(0xffC58BF2)),
    );
    categories.add(
      CatagoryModel(
          name: 'Pie',
          iconPath: 'assets/icons/pie.svg',
          boxColor: Color(0xff92A3FD)),
    );
    categories.add(
      CatagoryModel(
          name: 'Smoothies',
          iconPath: 'assets/icons/pancakes.svg',
          boxColor: Color(0xffC58BF2)),
    );
    return categories;
  }
}
