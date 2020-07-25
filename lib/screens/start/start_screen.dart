import 'dart:io';

import 'package:flutter/material.dart';
import 'package:meu_money/constants.dart';
import 'package:meu_money/screens/home/home_screen.dart';
import 'package:meu_money/screens/login/login_screen.dart';
import 'package:meu_money/screens/start/start2_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StartScreen extends StatefulWidget {
  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  getUserValueSF() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    //Return String
    bool CheckValue = prefs.containsKey('user');
    String stringValue = "";
    if (CheckValue) {
      stringValue = prefs.getString("user");
    }
    print('stringValue: ${stringValue}');
    return stringValue;
  }

  teste() async {
    SecurityContext clientContext = new SecurityContext()
      ..setTrustedCertificates(
          '/Users/carlosdoki/Projetos/meu_money/assets/certificados/Banco_1/certs/client_certificate.crt')
      ..usePrivateKey(
          '/Users/carlosdoki/Projetos/meu_money/assets/certificados/Banco_1/certs/client_private_key.key');
    var client = new HttpClient(context: clientContext);
    var request = await client
        .postUrl(Uri.parse("https://as1.tecban-sandbox.o3bank.co.uk/token"));
    var response = await request.close();
    print(request);
    return response;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    teste();
    getUserValueSF().then((result) {
      print(result);
      if (result != "") {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomeScreen()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Container(
          color: Colors.black26,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 35.0,
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'Hora de transformar as suas finanças',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                child: Image.asset('assets/images/inicio.png'),
              ),
              SizedBox(
                height: 15.0,
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text:
                      'O caminho está à sua frente. Por estar aqui, você já deu o maior passo em direção à sua transformação financeira. E nós o guiaremos no processo',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                width: 250,
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Start2Screen()),
                    );
                  },
                  child: Text(
                    'INICIAR',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: Colors.blueAccent,
                ),
              ),
              FlatButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ),
                ),
                child: Text(
                  "Já tenho cadastro",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Teste extends StatelessWidget {
  const Teste({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.centerRight,
            child: FlatButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginScreen(),
                ),
              ),
              padding: EdgeInsets.only(right: 0.0),
              child: Text(
                "Já tenho cadastro",
                style: TextStyle(
                  color: kTextColor,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
