import 'package:flutter/material.dart';
import 'package:meu_money/models/Dicas.dart';

class Body extends StatelessWidget {
  final Dicas dicas;

  const Body({Key key, this.dicas}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[],
      ),
    );
  }
}
