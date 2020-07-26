import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meu_money/constants.dart';
import 'package:meu_money/size_config.dart';

class ProfileMenuItem extends StatelessWidget {
  const ProfileMenuItem({
    Key key,
    this.iconSrc,
    this.title,
    this.press,
  }) : super(key: key);

  final IconData iconSrc;
  final String title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return InkWell(
      onTap: press,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: defaultSize * 2, vertical: defaultSize * 3),
        child: SafeArea(
          child: Row(
            children: <Widget>[
              Icon(
                iconSrc,
                color: Colors.white,
                size: 30.0,
              ),
              SizedBox(
                width: defaultSize * 2,
              ),
              Text(
                title,
                style: TextStyle(
                  fontSize: defaultSize * 2,
                  color: kTextLightColor,
                ),
              ),
              Spacer(),
              Icon(
                Icons.arrow_forward_ios,
                size: defaultSize * 1.6,
                color: kTextLightColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
