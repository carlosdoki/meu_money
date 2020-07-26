import 'package:flutter/material.dart';
import 'package:flutter_money_formatter/flutter_money_formatter.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meu_money/components/my_bottom_nv_bar.dart';
import 'package:meu_money/constants.dart';
import 'package:meu_money/models/Extrato.dart';
import 'package:meu_money/screens/contas/contas_screen.dart';
import 'package:meu_money/screens/transacoes/components/body.dart';
import 'package:meu_money/size_config.dart';

class TransacoesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//     var earlier = now.subtract(const Duration(seconds: 5));
// assert(earlier.isBefore(now));

    var _extrato = extratos.where((i) => i.data.month == 7).toList();
    var _extrato2 =
        extratos.where((i) => (i.data.month == 7 && i.data.day < 25)).toList();

    double total = 0;
    _extrato.forEach((element) => total = total + element.valor);

    double totalPrevisto = 0;
    _extrato2
        .forEach((element) => totalPrevisto = totalPrevisto + element.valor);

    var _extratob1c1 = _extrato
        .where((i) => i.accountId == "5f1865dd7af45c38b6659a36")
        .toList();
    var _extratob1c3 = _extrato
        .where((i) => i.accountId == "5f1865df7af45c38b6659cc8")
        .toList();
    var _extratob1c2 = _extrato
        .where((i) => i.accountId == "5f1865de7af45c38b6659b7f")
        .toList();
    var _extratob2c1 = _extrato
        .where((i) => i.accountId == "5f186994a807e83a2e429e30")
        .toList();
    var _extratob2c2 = _extrato
        .where((i) => i.accountId == "5f186995a807e83a2e429f79")
        .toList();
    var _extratob2c3 = _extrato
        .where((i) => i.accountId == "5f186996a807e83a2e42a0c2")
        .toList();

    double totalb1c1 = 0;
    _extratob1c1.forEach((element) => totalb1c1 = totalb1c1 + element.valor);
    double totalb1c2 = 0;
    _extratob1c2.forEach((element) => totalb1c2 = totalb1c2 + element.valor);
    double totalb1c3 = 0;
    _extratob1c3.forEach((element) => totalb1c3 = totalb1c3 + element.valor);
    double totalb2c1 = 0;
    _extratob2c1.forEach((element) => totalb2c1 = totalb2c1 + element.valor);
    double totalb2c2 = 0;
    _extratob2c2.forEach((element) => totalb2c2 = totalb2c2 + element.valor);
    double totalb2c3 = 0;
    _extratob2c3.forEach((element) => totalb2c3 = totalb2c3 + element.valor);

    FlutterMoneyFormatter fmfSaldo = FlutterMoneyFormatter(amount: total);
    FlutterMoneyFormatter fmfSaldoPrevisto =
        FlutterMoneyFormatter(amount: totalPrevisto);
    FlutterMoneyFormatter fmfSaldob1c1 =
        FlutterMoneyFormatter(amount: totalb1c1);
    FlutterMoneyFormatter fmfSaldob1c2 =
        FlutterMoneyFormatter(amount: totalb1c2);
    FlutterMoneyFormatter fmfSaldob1c3 =
        FlutterMoneyFormatter(amount: totalb1c3);
    FlutterMoneyFormatter fmfSaldob2c1 =
        FlutterMoneyFormatter(amount: totalb2c1);
    FlutterMoneyFormatter fmfSaldob2c2 =
        FlutterMoneyFormatter(amount: totalb2c2);
    FlutterMoneyFormatter fmfSaldob2c3 =
        FlutterMoneyFormatter(amount: totalb2c3);

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: buildAppBar(),
      body: Body(
          fmfSaldo: fmfSaldo,
          fmfSaldoPrevisto: fmfSaldoPrevisto,
          fmfSaldob1c1: fmfSaldob1c1,
          fmfSaldob1c2: fmfSaldob1c2,
          fmfSaldob1c3: fmfSaldob1c3,
          fmfSaldob2c1: fmfSaldob2c1,
          fmfSaldob2c2: fmfSaldob2c2,
          fmfSaldob2c3: fmfSaldob2c3),
      bottomNavigationBar: MyBottomNavBar(),
    );
  }

  AppBar buildAppBar() {
    double defaultSize = SizeConfig.defaultSize;

    return AppBar(
      backgroundColor: Colors.black,
      leading: IconButton(
        icon: SvgPicture.asset(
          "assets/icons/menu.svg",
          color: Colors.white,
        ),
        onPressed: () {},
      ),
      centerTitle: true,
      title: Text(
        "Contas",
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
