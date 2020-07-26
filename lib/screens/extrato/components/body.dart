import 'package:flutter/material.dart';
import 'package:flutter_money_formatter/flutter_money_formatter.dart';
import 'package:meu_money/models/Extrato.dart';
import 'package:meu_money/screens/extrato/components/extrato_item.dart';
import 'package:meu_money/size_config.dart';

class Body extends StatelessWidget {
  final String nickName;

  const Body({Key key, this.nickName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _extrato = extratos
        .where((i) => (i.data.month == 7 && i.data.year == 2019))
        .toList();
    var _extratob1c1 = _extrato
        .where((i) => i.accountId == "5f1865dd7af45c38b6659a36")
        .toList();
    var _extratob1c2 = _extrato
        .where((i) => i.accountId == "5f1865de7af45c38b6659b7f")
        .toList();

    Comparator<Extrato> extratoComparator = (a, b) => a.data.compareTo(b.data);
    _extratob1c1.sort(extratoComparator);

    double totalb1c1 = 0;
    _extratob1c1.forEach((element) => totalb1c1 = totalb1c1 + element.valor);
    FlutterMoneyFormatter fmfTotal = FlutterMoneyFormatter(amount: totalb1c1);

    _extratob1c2.sort(extratoComparator);

    double totalb1c2 = 0;
    _extratob1c2.forEach((element) => totalb1c2 = totalb1c2 + element.valor);
    FlutterMoneyFormatter fmfTotal2 = FlutterMoneyFormatter(amount: totalb1c2);

    if (nickName == 'xxxx1002') {
      fmfTotal = fmfTotal2;
      _extratob1c1 = _extratob1c2;
    }

    return SafeArea(
      child: Column(
        children: <Widget>[
          Container(
            child: Text(
              "R\$ ${fmfTotal.output.nonSymbol}",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(height: 30),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.defaultSize * 2,
              ),
              child: GridView.builder(
                itemCount: _extratob1c1.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount:
                      SizeConfig.orientation == Orientation.landscape ? 2 : 1,
                  mainAxisSpacing: 20,
                  crossAxisSpacing:
                      SizeConfig.orientation == Orientation.landscape
                          ? SizeConfig.defaultSize * 2
                          : 0,
                  childAspectRatio: 5,
                ),
                itemBuilder: (context, index) => ExtratoItemCard(
                  extrato: _extratob1c1[index],
                  press: () {},
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
