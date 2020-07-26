import 'package:flutter/material.dart';
import 'package:meu_money/constants.dart';
import 'package:meu_money/models/Dicas.dart';
import 'package:url_launcher/url_launcher.dart';

class TitleDurationAndFabBtn extends StatelessWidget {
  final Dicas dicas;

  const TitleDurationAndFabBtn({Key key, this.dicas}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(kDefaultPadding),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  dicas.title,
                  style: Theme.of(context).textTheme.headline5.copyWith(
                        color: Colors.white,
                      ),
                ),
                SizedBox(
                  height: kDefaultPadding / 2,
                ),
                InkWell(
                  child: Text(
                    "Abrir página",
                    style: TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline),
                  ),
                  onTap: () => launch(dicas.url),
                )
              ],
            ),
          ),
          SizedBox(
            height: 64,
            width: 64,
            child: FlatButton(
              onPressed: () {},
              color: kSecondaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Icon(
                Icons.add,
                size: 28,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
