import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meu_money/components/my_bottom_nv_bar.dart';
import 'package:meu_money/constants.dart';
import 'package:meu_money/screens/contas/contas_screen.dart';
import 'package:meu_money/size_config.dart';

class TransacoesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: buildAppBar(),
      body: SafeArea(
        child: Container(
          child: Expanded(
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
                Container(
                  height: 513,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    color: Color(0xFF373737),
                  ),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding:
                            EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
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
                                  'R\$ 0,00',
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
                                  'R\$ 0,00',
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
                            Container(
                              height: 100.0,
                              child: Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Row(
                                  children: <Widget>[
                                    CircleAvatar(
                                      radius: 25.0,
                                      child: Image.asset(
                                        'assets/images/itau.png',
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10.0,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        SizedBox(
                                          height: 7.5,
                                        ),
                                        Text(
                                          'Bbb',
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
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
                                          'R\$ 0,00',
                                          style: TextStyle(color: Colors.red),
                                        ),
                                        Text(
                                          'R\$ 0,00',
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
                            SizedBox(
                              height: 25.0,
                            ),
                            Container(
                              height: 100.0,
                              child: Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Row(
                                  children: <Widget>[
                                    CircleAvatar(
                                      radius: 25.0,
                                      child: Image.asset(
                                        'assets/images/wallet.png',
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10.0,
                                    ),
                                    Column(
                                      children: <Widget>[
                                        SizedBox(
                                          height: 7.5,
                                        ),
                                        Text(
                                          'Wallet',
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          'Current Balance',
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
                                      width: 30.0,
                                    ),
                                    Column(
                                      children: <Widget>[
                                        SizedBox(
                                          height: 25.0,
                                        ),
                                        Text(
                                          'R\$ 0,00',
                                          style: TextStyle(color: Colors.red),
                                        ),
                                        Text(
                                          'R\$ 0,00',
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
                            SizedBox(
                              height: 30.0,
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
