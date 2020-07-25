import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:meu_money/constants.dart';
import 'package:meu_money/models/Despesas.dart';
import 'package:meu_money/size_config.dart';

class Grafico extends StatelessWidget {
  const Grafico({
    Key key,
    @required this.series,
  }) : super(key: key);

  final List<charts.Series<Despesas, String>> series;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.3,
      child: Container(
        height: SizeConfig.defaultSize,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          boxShadow: [
            kDefaultShadow,
          ],
          color: Color(0xFF1C1C1E),
        ),
        child: Expanded(
          child: charts.PieChart(
            series,
            animate: true,
            animationDuration: Duration(seconds: 5),
            behaviors: [
              new charts.DatumLegend(
                outsideJustification: charts.OutsideJustification.endDrawArea,
                horizontalFirst: false,
                desiredMaxRows: 2,
                cellPadding: new EdgeInsets.only(right: 4.0, bottom: 4.0),
                entryTextStyle: charts.TextStyleSpec(
                    color: charts.MaterialPalette.white,
                    fontFamily: 'Georgia',
                    fontSize: 11),
              )
            ],
            defaultRenderer: new charts.ArcRendererConfig(
              arcWidth: 100,
              arcRendererDecorators: [
                new charts.ArcLabelDecorator(
                    labelPosition: charts.ArcLabelPosition.inside)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
