import 'package:flutter/material.dart';
import 'package:flutter_money_formatter/flutter_money_formatter.dart';
import 'package:meu_money/constants.dart';
import 'package:meu_money/size_config.dart';

class Saldo extends StatelessWidget {
  final double rendas;
  final double gastos;

  const Saldo({
    Key key,
    this.rendas,
    this.gastos,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FlutterMoneyFormatter fmfRendas = FlutterMoneyFormatter(amount: rendas);
    FlutterMoneyFormatter fmfGastos = FlutterMoneyFormatter(amount: gastos);
    FlutterMoneyFormatter fmfSaldo = FlutterMoneyFormatter(amount: rendas)
        .fastCalc(type: FastCalcType.substraction, amount: gastos);

    return SizedBox(
      height: SizeConfig.defaultSize * 12,
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFF1C1C1E),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(
              SizeConfig.defaultSize * 1.6,
            ),
            bottomRight: Radius.circular(
              SizeConfig.defaultSize * 1.6,
            ),
          ),
          // boxShadow: [
          //   BoxShadow(
          //     offset: Offset(0, 2),
          //     blurRadius: 4,
          //     color: Colors.white,
          //   ),
          // ],
        ),
        child: Column(
          children: <Widget>[
            Text(
              "Saldo",
              style: TextStyle(
                color: kTextLightColor,
                fontSize: 16,
              ),
            ),
            Text(
              "R\$ ${fmfSaldo.output.nonSymbol}",
              style: TextStyle(
                color: kTextColor,
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SizedBox(
                    height: 32,
                    width: 32,
                    child: FlatButton(
                      padding: EdgeInsets.all(kDefaultPadding / 4),
                      onPressed: () {},
                      color: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(
                        Icons.arrow_upward,
                        size: 22,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: kDefaultPadding / 2,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Rendas",
                        style: TextStyle(
                          color: kTextLightColor,
                        ),
                      ),
                      Text(
                        "R\$ ${fmfRendas.output.nonSymbol}",
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: kDefaultPadding,
                  ),
                  SizedBox(
                    height: 32,
                    width: 32,
                    child: FlatButton(
                      padding: EdgeInsets.all(kDefaultPadding / 4),
                      onPressed: () {},
                      color: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(
                        Icons.arrow_downward,
                        size: 22,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: kDefaultPadding / 2,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Gastos",
                        style: TextStyle(
                          color: kTextLightColor,
                        ),
                      ),
                      Text(
                        "R\$ ${fmfGastos.output.nonSymbol}",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
