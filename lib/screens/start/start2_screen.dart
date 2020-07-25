import 'package:flutter/material.dart';
import 'package:meu_money/screens/start/start3_screen.dart';

class Start2Screen extends StatefulWidget {
  @override
  _Start2ScreenState createState() => _Start2ScreenState();
}

class _Start2ScreenState extends State<Start2Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          color: Colors.blueAccent,
          iconSize: 28.0,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SafeArea(
        child: Container(
          color: Colors.black,
          child: Column(
            children: <Widget>[
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'Qual é o seu principal \n objetivo financeiro hoje?',
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
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text:
                      'O que o trouxe o Meu.Money ? Gerenciar suas finanças é muito mais fácil com um objetivo em mente.',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 19.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                child: Expanded(
                  child: ListView(
                    padding: EdgeInsets.all(10.0),
                    children: <Widget>[
                      Objetivos(
                        texto: "Consolidação de Contas",
                        image: "assets/images/consolida.png",
                        onPress: () {},
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Objetivos(
                        texto: "Começar a economizar",
                        image: 'assets/images/economizar.png',
                        onPress: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Start3Screen(),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Objetivos(
                        texto: "Mais renda",
                        image: 'assets/images/renda.png',
                        onPress: () {},
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Objetivos(
                        texto: "Otimizar investimentos",
                        image: 'assets/images/investimentos.png',
                        onPress: () {},
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Objetivos(
                        texto: "Sair da dívida",
                        image: 'assets/images/debt.png',
                        onPress: () {},
                      ),
                    ],
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

class Objetivos extends StatelessWidget {
  final String image;
  final String texto;
  final Function onPress;

  const Objetivos({Key key, this.image, this.texto, this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Color(0xFF373737),
      ),
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 10.0,
          ),
          Image.asset(
            image,
            width: 75,
            height: 75,
          ),
          SizedBox(
            width: 10.0,
          ),
          FlatButton(
            onPressed: onPress,
            child: Text(
              texto,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0),
            ),
          ),
        ],
      ),
    );
  }
}
