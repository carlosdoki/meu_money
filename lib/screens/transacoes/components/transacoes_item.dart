import 'package:flutter/material.dart';
import 'package:meu_money/constants.dart';
import 'package:meu_money/size_config.dart';

class TransacoesItem extends StatelessWidget {
  const TransacoesItem({
    Key key,
    this.banco,
    this.logo,
    this.nickName,
    this.saldo,
    this.saldoPrevisto,
    this.press,
  }) : super(key: key);

  final String banco;
  final String logo;
  final String nickName;
  final String saldo;
  final String saldoPrevisto;
  final Function press;

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return InkWell(
      onTap: press,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: defaultSize * 2, vertical: defaultSize * 2),
        child: SafeArea(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
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
      ),
    );
  }
}
