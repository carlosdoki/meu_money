import 'package:flutter/material.dart';
import 'package:meu_money/constants.dart';
import 'package:meu_money/size_config.dart';

class Categorias extends StatefulWidget {
  @override
  _CategoriasState createState() => _CategoriasState();
}

class _CategoriasState extends State<Categorias> {
  List<String> categories = [
    "Rendas e Gastos",
    "Categorias",
    "Bancos",
    "Cartão de Crédito",
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: SizeConfig.defaultSize * 2,
      ),
      child: SizedBox(
        height: SizeConfig.defaultSize * 3.5,
        child: Container(
          color: Colors.black,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index) => buildCategoriesItem(index),
          ),
        ),
      ),
    );
  }

  Widget buildCategoriesItem(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(left: SizeConfig.defaultSize * 2),
        padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.defaultSize * 2,
            vertical: SizeConfig.defaultSize * 0.5),
        decoration: BoxDecoration(
            color:
                selectedIndex == index ? Color(0xFFEFF3EE) : Colors.transparent,
            borderRadius: BorderRadius.circular(
              SizeConfig.defaultSize * 1.6,
            )),
        child: Text(
          categories[index],
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: selectedIndex == index ? kPrimaryColor : Color(0xFFC2C2B5),
          ),
        ),
      ),
    );
  }
}
