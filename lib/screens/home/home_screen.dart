import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:charts_flutter/flutter.dart' as charts;
import 'package:meu_money/components/my_bottom_nv_bar.dart';
import 'package:meu_money/constants.dart';
import 'package:meu_money/models/Contas.dart';
import 'package:meu_money/models/Despesas.dart';
import 'package:meu_money/models/Extrato.dart';
import 'package:meu_money/models/RendasGastos.dart';
import 'package:meu_money/screens/home/components/categorias.dart';
import 'package:meu_money/screens/home/components/dicas_carrousel.dart';
import 'package:meu_money/screens/home/components/grafico.dart';
import 'package:meu_money/screens/home/components/saldo.dart';
import 'package:meu_money/size_config.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // var _rendas = extratos.where((i) => i.tipo == "Debit").toList();
    // var _gastos = extratos.where((i) => i.tipo == "Credit").toList();

    double _saldo = 0.0;
    contas.forEach((element) => _saldo = _saldo + element.saldo);

    double totalRendas = 0;
    // _rendas.forEach((element) => totalRendas = totalRendas + element.valor);

    double totalGastos = 0;
    extratos.forEach((element) => totalGastos = totalGastos + element.valor);

    totalRendas = _saldo + totalGastos;

    final List<RendaGasto> data = [
      RendaGasto(
        tipo: "Renda",
        valor: totalRendas,
        barColor: charts.ColorUtil.fromDartColor(Colors.green),
      ),
      RendaGasto(
        tipo: "Gasto",
        valor: totalGastos,
        barColor: charts.ColorUtil.fromDartColor(Colors.red),
      ),
    ];

    List<charts.Series<RendaGasto, String>> series = [
      charts.Series(
        id: "Renda x Gastos",
        data: data,
        domainFn: (RendaGasto series, _) => series.tipo,
        measureFn: (RendaGasto series, _) => series.valor,
        colorFn: (RendaGasto series, _) => series.barColor,
      )
    ];

    SizeConfig().init(context);

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            // charts.BarChart(series, animate: true),
            Saldo(
              rendas: totalRendas,
              gastos: totalGastos,
            ),
            Categorias(),
            Grafico(series: series),
            SizedBox(
              height: kDefaultPadding,
            ),
            DicasCarrousel(),
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
