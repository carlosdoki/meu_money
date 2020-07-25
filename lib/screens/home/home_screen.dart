import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:charts_flutter/flutter.dart' as charts;
import 'package:meu_money/components/my_bottom_nv_bar.dart';
import 'package:meu_money/constants.dart';
import 'package:meu_money/models/Despesas.dart';
import 'package:meu_money/screens/home/components/categorias.dart';
import 'package:meu_money/screens/home/components/grafico.dart';
import 'package:meu_money/screens/home/components/saldo.dart';
import 'package:meu_money/size_config.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<charts.Series<Despesas, String>> series = [
      charts.Series(
          id: "Subscribers",
          data: data,
          domainFn: (Despesas series, _) => series.year,
          measureFn: (Despesas series, _) => series.subscribers,
          colorFn: (Despesas series, _) => series.barColor)
    ];

    SizeConfig().init(context);

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: buildAppBar(),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            // charts.BarChart(series, animate: true),
            Saldo(
              rendas: 2000.0,
              gastos: 3000.0,
            ),
            Categorias(),
            Grafico(series: series),
          ],
        ),
      ),
      bottomNavigationBar: MyBottomNavBar(),
    );
  }

  AppBar buildAppBar() {
    double defaultSize = SizeConfig.defaultSize;

    return AppBar(
      backgroundColor: Color(0xFF1C1C1E),
      leading: IconButton(
        icon: SvgPicture.asset(
          "assets/icons/menu.svg",
          color: Colors.white,
        ),
        onPressed: () {},
      ),
      centerTitle: true,
      title: Text(
        "Controle Financeiro",
        style: TextStyle(
          color: kPrimaryColor,
        ),
      ),
      actions: <Widget>[
        Container(
          margin: EdgeInsets.only(
            bottom: defaultSize,
          ),
          height: defaultSize * 5,
          width: defaultSize * 5,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.white,
              width: defaultSize * 0.5,
            ),
            image: DecorationImage(
              fit: BoxFit.contain,
              image: AssetImage(
                "assets/images/pic.png",
              ),
            ),
          ),
        ),
        SizedBox(
          width: SizeConfig.defaultSize * 0.5,
        ),
      ],
    );
  }
}
