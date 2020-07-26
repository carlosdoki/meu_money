import 'package:flutter/material.dart';
import 'package:meu_money/screens/categorias/categorias_screen.dart';
import 'package:meu_money/screens/more/components/profile_menu_item.dart';
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
              ProfileMenuItem(
                iconSrc: Icons.pause_circle_outline,
                title: "Objetivos",
                press: () {},
              ),
              ProfileMenuItem(
                iconSrc: Icons.category,
                title: "Categorias",
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CategoriasScreen()),
                  );
                },
              ),
              ProfileMenuItem(
                iconSrc: Icons.label,
                title: "Tags",
                press: () {},
              ),
              ProfileMenuItem(
                iconSrc: Icons.cloud_download,
                title: "Exportar relatórios",
                press: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
