import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meu_money/constants.dart';
import 'package:meu_money/models/Dicas.dart';
import 'package:meu_money/screens/details_dicas/details_dicas_screen.dart';

class DicasCard extends StatelessWidget {
  final Dicas dicas;

  const DicasCard({Key key, this.dicas}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: OpenContainer(
        closedElevation: 0,
        openElevation: 0,
        closedBuilder: (context, action) => buildMovieCard(context),
        openBuilder: (context, action) => DetailDicasScreen(
          dicas: dicas,
        ),
      ),
    );
  }

  Column buildMovieCard(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              boxShadow: [
                kDefaultShadow,
              ],
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(dicas.poster),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
          child: Text(
            dicas.title,
            style: Theme.of(context).textTheme.headline5.copyWith(
                  fontWeight: FontWeight.w600,
                ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SvgPicture.asset(
              "assets/icons/star_fill.svg",
              height: 20,
            ),
            SizedBox(
              width: kDefaultPadding / 2,
            ),
            Text(
              "${dicas.rating}",
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ],
        ),
      ],
    );
  }
}
