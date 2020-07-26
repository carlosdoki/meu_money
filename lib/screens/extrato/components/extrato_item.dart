import 'package:flutter/material.dart';
import 'package:flutter_money_formatter/flutter_money_formatter.dart';
import 'package:meu_money/models/Extrato.dart';
import 'package:meu_money/size_config.dart';
import 'package:intl/intl.dart';

class ExtratoItemCard extends StatelessWidget {
  final Extrato extrato;
  final Function press;

  const ExtratoItemCard({Key key, this.extrato, this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    FlutterMoneyFormatter fmfValor =
        FlutterMoneyFormatter(amount: extrato.valor);

    Color color;
    IconData iconSrc;
    switch (extrato.transactionInformation) {
      case "AMAZON PRIME":
        {
          iconSrc = Icons.wb_sunny;
          color = Colors.green;
        }
        break;

      case "CCAA":
        {
          iconSrc = Icons.book;
          color = Colors.purple;
        }
        break;

      case "ESCOLA AGOSTINHO":
        {
          iconSrc = Icons.book;
          color = Colors.purple;
        }
        break;
      case "LOJA 3 VIVENDA":
        {
          iconSrc = Icons.fastfood;
          color = Colors.blue;
        }
        break;
      case "GOL LINHAS AEREAS":
        {
          iconSrc = Icons.wb_sunny;
          color = Colors.green;
        }
        break;

      default:
        {
          iconSrc = Icons.home;
          color = Colors.orange;
        }
        break;
    }

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
                padding: EdgeInsets.all(defaultSize / 2),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: color,
                      radius: 15.0,
                      child: Icon(
                        iconSrc,
                        color: Colors.white,
                        size: 10.0,
                      ),
                    ),
                    Text(
                      // extrato.tipo,
                      DateFormat('dd/MM/yyyy').format(extrato.data),
                      style: TextStyle(
                        fontSize: defaultSize,
                        color: Colors.white,
                      ),
                    ),
                    Spacer(),
                    Text(
                      extrato.transactionInformation,
                      style: TextStyle(
                        fontSize: defaultSize,
                        color: Colors.white,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                    ),
                    Spacer(),
                    Text(
                      "R\$ ${fmfValor.output.nonSymbol}",
                      style: TextStyle(
                        fontSize: defaultSize,
                        color: Colors.white,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: defaultSize * 0.5,
            ),
            // AspectRatio(
            //   aspectRatio: 0.71,
            //   child: Image.asset(
            //     recipeBundle.imageSrc,
            //     fit: BoxFit.cover,
            //     alignment: Alignment.centerLeft,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
