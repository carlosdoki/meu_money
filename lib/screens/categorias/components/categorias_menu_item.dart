import 'package:flutter/material.dart';
import 'package:meu_money/constants.dart';
import 'package:meu_money/size_config.dart';

class CategoriaMenuItem extends StatelessWidget {
  const CategoriaMenuItem({
    Key key,
    this.iconSrc,
    this.title,
    this.press,
    this.color,
  }) : super(key: key);

  final IconData iconSrc;
  final String title;
  final Function press;
  final Color color;

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return InkWell(
      onTap: press,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: defaultSize * 2, vertical: defaultSize * 2),
        child: SafeArea(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                backgroundColor: color,
                radius: 25.0,
                child: Icon(
                  iconSrc,
                  color: Colors.white,
                  size: 20.0,
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(
                title,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              Spacer(),
              Icon(
                Icons.add_circle,
                color: Colors.white,
                size: 20.0,
              ),
              SizedBox(
                width: 5.0,
              ),
              Icon(
                Icons.more_horiz,
                color: Colors.white,
                size: 20.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
