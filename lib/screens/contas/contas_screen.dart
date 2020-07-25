import 'package:flutter/material.dart';
import 'package:meu_money/constants.dart';
import 'package:meu_money/screens/contas/components/profile_menu_item.dart';
import 'package:meu_money/size_config.dart';

class ContaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;

    return Scaffold(
      // backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: Text("Nova Conta"),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Saldo atual",
              style: TextStyle(
                color: kTextLightColor,
              ),
            ),
            Text(
              "R\$ 0,00",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Color(0xFF1C1C1E),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Instituição Financeira",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      IconesBancos(
                        icone: "assets/images/itau.png",
                      ),
                      IconesBancos(
                        icone: "assets/images/bb.jpeg",
                      ),
                      IconesBancos(
                        icone: "assets/images/caixa.jpeg",
                      ),
                      IconesBancos(
                        icone: "assets/images/bradesco.jpeg",
                      ),
                      IconesBancos(
                        icone: "assets/images/nubank.png",
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Divider(
                    color: Colors.white,
                  ),
                  ProfileMenuItem(
                    iconSrc: "assets/images/itau.png",
                    title: "Itau",
                    press: () {},
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    // decoration: BoxDecoration(
                    //   border: true,
                    // ),
                    height: 60.0,
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(
                        color: kTextColor,
                      ),
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(top: 14.0),
                          prefixIcon: Icon(
                            Icons.account_balance,
                            color: Colors.white,
                          ),
                          hintStyle: TextStyle(
                            color: kTextLightColor,
                          ),
                          hintText: 'Agência e Conta'),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 25.0),
                    width: double.infinity,
                    child: RaisedButton(
                      elevation: 5.0,
                      onPressed: () {},
                      padding: EdgeInsets.all(15.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      color: Colors.white,
                      child: Text(
                        'Salvar',
                        style: TextStyle(
                          color: Color(0xFF527DAA),
                          letterSpacing: 1.5,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
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

class IconesBancos extends StatelessWidget {
  final String icone;

  const IconesBancos({Key key, this.icone}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            icone,
          ),
        ),
      ),
    );
  }
}
