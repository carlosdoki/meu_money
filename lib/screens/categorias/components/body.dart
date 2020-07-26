import 'package:flutter/material.dart';
import 'package:meu_money/screens/categorias/components/categorias_menu_item.dart';
import 'package:meu_money/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;

    return SingleChildScrollView(
      child: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xFF373737),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0)),
          ),
          child: Column(
            children: <Widget>[
              CategoriaMenuItem(
                iconSrc: Icons.save_alt,
                title: "Roupas",
                color: Colors.blueAccent,
                press: () {},
              ),
              CategoriaMenuItem(
                iconSrc: Icons.book,
                title: "Educação",
                color: Colors.purple,
                press: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => CategoriasScreen()),
                  // );
                },
              ),
              CategoriaMenuItem(
                iconSrc: Icons.wb_sunny,
                title: "Entreterimento",
                color: Colors.green,
                press: () {},
              ),
              CategoriaMenuItem(
                iconSrc: Icons.fastfood,
                title: "Comidas e bebidas",
                color: Colors.blue,
                press: () {},
              ),
              CategoriaMenuItem(
                iconSrc: Icons.healing,
                title: "Saúde",
                color: Colors.greenAccent,
                press: () {},
              ),
              CategoriaMenuItem(
                iconSrc: Icons.home,
                title: "Casa",
                color: Colors.orange,
                press: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
