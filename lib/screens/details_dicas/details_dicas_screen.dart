import 'package:flutter/material.dart';
import 'package:meu_money/models/Dicas.dart';
import 'package:meu_money/screens/details_dicas/components/body.dart';

class DetailDicasScreen extends StatelessWidget {
  final Dicas dicas;

  const DetailDicasScreen({Key key, this.dicas}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Body(dicas: dicas),
    );
  }
}
