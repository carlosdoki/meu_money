import 'package:flutter/material.dart';
import 'package:meu_money/constants.dart';
import 'package:meu_money/models/Dicas.dart';
import 'package:meu_money/screens/details_dicas/components/backdrop_rating.dart';
import 'package:meu_money/screens/details_dicas/components/title_duration_and_fab.dart';

class Body extends StatelessWidget {
  final Dicas dicas;

  const Body({Key key, this.dicas}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          BackDropAndRating(size: size, dicas: dicas),
          SizedBox(height: kDefaultPadding / 2),
          TitleDurationAndFabBtn(dicas: dicas),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: kDefaultPadding / 2,
              horizontal: kDefaultPadding,
            ),
            child: Text(
              "Descrição",
              style: Theme.of(context).textTheme.headline5.copyWith(
                    color: Colors.white,
                  ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Text(
              dicas.description,
              style: TextStyle(
                color: Color(0xFF737599),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
