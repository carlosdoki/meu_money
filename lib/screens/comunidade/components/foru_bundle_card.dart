import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meu_money/models/Forum.dart';
import 'package:meu_money/size_config.dart';

class ForumBundleCard extends StatelessWidget {
  final Forum forum;
  final Function press;

  const ForumBundleCard({Key key, this.forum, this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return GestureDetector(
      onTap: press,
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFF373737),
          borderRadius: BorderRadius.circular(
            defaultSize * 1.8,
          ),
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(defaultSize * 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Spacer(),
                    Text(
                      forum.nome,
                      style: TextStyle(
                        fontSize: defaultSize * 2.2,
                        color: Colors.white,
                      ),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      height: defaultSize * 0.5,
                    ),
                    Text(
                      forum.descricao,
                      style: TextStyle(
                        color: Colors.white54,
                      ),
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Spacer(),
                    Row(
                      children: <Widget>[
                        IconButton(
                          icon: SvgPicture.asset(
                            "assets/icons/chat.svg",
                            color: Colors.white,
                            height: 12,
                          ),
                        ),
                        Text(
                          "${forum.qtdeComentarios}",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                        Spacer(),
                        IconButton(
                          icon: SvgPicture.asset(
                            "assets/icons/user.svg",
                            color: Colors.white,
                            height: 12,
                          ),
                        ),
                        Text(
                          "${forum.qtdeUsuarios}",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                        Spacer(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: defaultSize * 0.5,
            ),
            AspectRatio(
              aspectRatio: 0.71,
              child: Image.asset(
                forum.logo,
                fit: BoxFit.fill,
                alignment: Alignment.centerLeft,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row buildInfoRow(double defaultSize, {String iconSrc, text}) {
    return Row(
      children: <Widget>[
        SvgPicture.asset(iconSrc),
        SizedBox(
          width: defaultSize,
        ),
        Text(
          text,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
