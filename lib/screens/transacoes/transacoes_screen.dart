import 'package:flutter/material.dart';
import 'package:flutter_money_formatter/flutter_money_formatter.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meu_money/components/my_bottom_nv_bar.dart';
import 'package:meu_money/constants.dart';
import 'package:meu_money/models/Extrato.dart';
import 'package:meu_money/screens/contas/contas_screen.dart';
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
      body: SafeArea(
        child: Expanded(
          child: Container(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 15.0,
                ),
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
                SizedBox(
                  height: 15.0,
                ),
                SingleChildScrollView(
                  child: Container(
                    height: SizeConfig.screenHeight - 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                      color: Color(0xFF373737),
                    ),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(
                              top: 10.0, left: 10.0, right: 10.0),
                          child: Row(
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
                                margin: const EdgeInsets.only(
                                    left: 10.0, right: 10.0),
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
                        SizedBox(
                          height: 15.0,
                          child: Divider(
                            indent: 10.0,
                            endIndent: 10.0,
                            color: Colors.black,
                            height: 5.0,
                          ),
                        ),
                        Expanded(
                          child: ListView(
                            children: <Widget>[
                              SaldoBancos(
                                banco: "Banco1",
                                nickName: "xxxx1001",
                                saldo: fmfSaldob1c1.output.nonSymbol,
                                saldoPrevisto: fmfSaldob1c1.output.nonSymbol,
                                logo: "assets/images/itau.png",
                              ),
                              Divider(
                                color: Colors.white,
                              ),
                              SaldoBancos(
                                banco: "Banco1",
                                nickName: "xxxx1002",
                                saldo: fmfSaldob1c2.output.nonSymbol,
                                saldoPrevisto: fmfSaldob1c2.output.nonSymbol,
                                logo: "assets/images/itau.png",
                              ),
                              Divider(
                                color: Colors.white,
                              ),
                              SaldoBancos(
                                banco: "Banco1",
                                nickName: "xxxx1003",
                                saldo: fmfSaldob1c3.output.nonSymbol,
                                saldoPrevisto: fmfSaldob1c3.output.nonSymbol,
                                logo: "assets/images/itau.png",
                              ),
                              Divider(
                                color: Colors.white,
                              ),
                              SaldoBancos(
                                banco: "Banco2",
                                nickName: "xxxx1001",
                                saldo: fmfSaldob2c1.output.nonSymbol,
                                saldoPrevisto: fmfSaldob2c1.output.nonSymbol,
                                logo: "assets/images/bradesco.jpeg",
                              ),
                              Divider(
                                color: Colors.white,
                              ),
                              SaldoBancos(
                                banco: "Banco2",
                                nickName: "xxxx1002",
                                saldo: fmfSaldob2c2.output.nonSymbol,
                                saldoPrevisto: fmfSaldob2c2.output.nonSymbol,
                                logo: "assets/images/bradesco.jpeg",
                              ),
                              Divider(
                                color: Colors.white,
                              ),
                              SaldoBancos(
                                banco: "Banco2",
                                nickName: "xxxx1003",
                                saldo: fmfSaldob2c3.output.nonSymbol,
                                saldoPrevisto: fmfSaldob2c3.output.nonSymbol,
                                logo: "assets/images/bradesco.jpeg",
                              ),
                              Divider(
                                color: Colors.white,
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
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
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

class SaldoBancos extends StatelessWidget {
  final String banco;
  final String logo;
  final String nickName;
  final String saldo;
  final String saldoPrevisto;

  const SaldoBancos(
      {Key key,
      this.banco,
      this.nickName,
      this.saldo,
      this.saldoPrevisto,
      this.logo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 100.0,
      child: Padding(
        padding: EdgeInsets.all(5.0),
        child: Row(
          children: <Widget>[
            CircleAvatar(
              radius: 25.0,
              child: Image.asset(
                logo,
              ),
            ),
            SizedBox(
              width: 10.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 7.5,
                ),
                Text(
                  banco,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  nickName,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                Text(
                  'Saldo',
                  textAlign: TextAlign.start,
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  'Saldo em (31 JUL)',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 45.0,
            ),
            Column(
              children: <Widget>[
                SizedBox(
                  height: 25.0,
                ),
                Text(
                  'R\$ $saldo',
                  style: TextStyle(color: Colors.red),
                ),
                Text(
                  'R\$ $saldoPrevisto',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
