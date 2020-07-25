import 'package:flutter/material.dart';
import 'package:meu_money/constants.dart';
import 'package:meu_money/size_config.dart';

class ProfileMenuItem extends StatelessWidget {
  final String iconSrc, title;
  final Function press;

  const ProfileMenuItem({Key key, this.iconSrc, this.title, this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return InkWell(
      onTap: press,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: defaultSize * 2, vertical: defaultSize),
        child: SafeArea(
          child: Row(
            children: <Widget>[
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      iconSrc,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: defaultSize * 2,
              ),
              Text(
                title,
                style: TextStyle(
                  fontSize: defaultSize * 1.6,
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
