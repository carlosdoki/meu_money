import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class Despesas {
  final String year;
  final int subscribers;
  final charts.Color barColor;

  Despesas(
      {@required this.year,
      @required this.subscribers,
      @required this.barColor});
}

final List<Despesas> data = [
  Despesas(
    year: "2008",
    subscribers: 10000000,
    barColor: charts.ColorUtil.fromDartColor(Colors.blue),
  ),
  Despesas(
    year: "2009",
    subscribers: 11000000,
    barColor: charts.ColorUtil.fromDartColor(Colors.blue),
  ),
  Despesas(
    year: "2010",
    subscribers: 12000000,
    barColor: charts.ColorUtil.fromDartColor(Colors.blue),
  ),
  Despesas(
    year: "2011",
    subscribers: 10000000,
    barColor: charts.ColorUtil.fromDartColor(Colors.blue),
  ),
  Despesas(
    year: "2012",
    subscribers: 8500000,
    barColor: charts.ColorUtil.fromDartColor(Colors.blue),
  ),
  Despesas(
    year: "2013",
    subscribers: 7700000,
    barColor: charts.ColorUtil.fromDartColor(Colors.blue),
  ),
  Despesas(
    year: "2014",
    subscribers: 7600000,
    barColor: charts.ColorUtil.fromDartColor(Colors.blue),
  ),
  Despesas(
    year: "2015",
    subscribers: 5500000,
    barColor: charts.ColorUtil.fromDartColor(Colors.red),
  ),
];
