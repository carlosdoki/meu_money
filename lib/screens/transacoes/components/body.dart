import 'package:flutter/material.dart';
import 'package:flutter_money_formatter/flutter_money_formatter.dart';
import 'package:meu_money/screens/contas/contas_screen.dart';
import 'package:meu_money/screens/extrato/extrato_screen.dart';
import 'package:meu_money/screens/transacoes/components/transacoes_item.dart';
import 'package:meu_money/size_config.dart';

class Body extends StatelessWidget {
  const Body(
      {Key key,
      this.fmfSaldo,
      this.fmfSaldoPrevisto,
      this.fmfSaldob1c1,
      this.fmfSaldob1c2,
      this.fmfSaldob1c3,
      this.fmfSaldob2c1,
      this.fmfSaldob2c2,
      this.fmfSaldob2c3})
      : super(key: key);

  final FlutterMoneyFormatter fmfSaldo;
  final FlutterMoneyFormatter fmfSaldoPrevisto;
  final FlutterMoneyFormatter fmfSaldob1c1;
  final FlutterMoneyFormatter fmfSaldob1c2;
  final FlutterMoneyFormatter fmfSaldob1c3;
  final FlutterMoneyFormatter fmfSaldob2c1;
  final FlutterMoneyFormatter fmfSaldob2c2;
  final FlutterMoneyFormatter fmfSaldob2c3;

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;

    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                    size: 20.0,
                  ),
                  onPressed: () {},
                ),
                SizedBox(
                  width: 50.0,
                ),
                Text(
                  'Julho',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(
                  width: 50.0,
                ),
                IconButton(
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: 20.0,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            Container(
              // height: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFF373737),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0)),
              ),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding:
                        EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          width: 15.0,
                        ),
                        Icon(
                          Icons.monetization_on,
                          color: Colors.white,
                          size: 20.0,
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Column(
                          children: <Widget>[
                            Text(
                              'Saldo',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15.0,
                              ),
                            ),
                            Text(
                              'R\$ ${fmfSaldo.output.nonSymbol}',
                              style: TextStyle(
                                color: Colors.green,
                                fontSize: 20.0,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 30.0,
                          width: 1.0,
                          color: Colors.white30,
                          margin:
                              const EdgeInsets.only(left: 10.0, right: 10.0),
                        ),
                        Icon(
                          Icons.attach_money,
                          color: Colors.white,
                          size: 25.0,
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Column(
                          children: <Widget>[
                            Text(
                              'Saldo em 31/JUL',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15.0,
                              ),
                            ),
                            Text(
                              'R\$ ${fmfSaldoPrevisto.output.nonSymbol}',
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.green,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  TransacoesItem(
                    banco: "Banco1",
                    nickName: "xxxx1001",
                    saldo: fmfSaldob1c1.output.nonSymbol,
                    saldoPrevisto: fmfSaldob1c1.output.nonSymbol,
                    logo: "assets/images/itau.png",
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ExtratoScreen(
                            banco: "Banco1",
                            nickName: "xxxx1001",
                          ),
                        ),
                      );
                    },
                  ),
                  Divider(
                    color: Colors.white,
                  ),
                  TransacoesItem(
                    banco: "Banco1",
                    nickName: "xxxx1002",
                    saldo: fmfSaldob1c2.output.nonSymbol,
                    saldoPrevisto: fmfSaldob1c2.output.nonSymbol,
                    logo: "assets/images/itau.png",
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ExtratoScreen(
                            banco: "Banco1",
                            nickName: "xxxx1002",
                          ),
                        ),
                      );
                    },
                  ),
                  Divider(
                    color: Colors.white,
                  ),
                  TransacoesItem(
                    banco: "Banco1",
                    nickName: "xxxx1003",
                    saldo: fmfSaldob1c3.output.nonSymbol,
                    saldoPrevisto: fmfSaldob1c3.output.nonSymbol,
                    logo: "assets/images/itau.png",
                    press: () {},
                  ),
                  Divider(
                    color: Colors.white,
                  ),
                  TransacoesItem(
                    banco: "Banco2",
                    nickName: "xxxx1001",
                    saldo: fmfSaldob2c1.output.nonSymbol,
                    saldoPrevisto: fmfSaldob2c1.output.nonSymbol,
                    logo: "assets/images/bradesco.jpeg",
                    press: () {},
                  ),
                  Divider(
                    color: Colors.white,
                  ),
                  TransacoesItem(
                    banco: "Banco2",
                    nickName: "xxxx1002",
                    saldo: fmfSaldob2c2.output.nonSymbol,
                    saldoPrevisto: fmfSaldob2c2.output.nonSymbol,
                    logo: "assets/images/bradesco.jpeg",
                    press: () {},
                  ),
                  Divider(
                    color: Colors.white,
                  ),
                  TransacoesItem(
                    banco: "Banco2",
                    nickName: "xxxx1003",
                    saldo: fmfSaldob2c3.output.nonSymbol,
                    saldoPrevisto: fmfSaldob2c3.output.nonSymbol,
                    press: () {},
                    logo: "assets/images/bradesco.jpeg",
                  ),
                  Container(
                    child: FlatButton(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ContaScreen(),
                        ),
                      ),
                      child: Text(
                        'Criar Conta',
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 15.0,
                        ),
                      ),
                    ),
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
