import 'package:flutter/material.dart';
import 'package:meu_money/constants.dart';
import 'package:meu_money/models/Dicas.dart';
import 'dart:math' as math;

import 'package:meu_money/screens/home/components/dicasCard.dart';

class DicasCarrousel extends StatefulWidget {
  DicasCarrousel({Key key}) : super(key: key);

  @override
  _DicasCarrouselState createState() => _DicasCarrouselState();
}

class _DicasCarrouselState extends State<DicasCarrousel> {
  PageController _pageController;
  int initialPage = 1;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      viewportFraction: 0.8,
      initialPage: initialPage,
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: AspectRatio(
        aspectRatio: 0.85,
        child: PageView.builder(
          onPageChanged: (value) {
            setState(() {
              initialPage = value;
            });
          },
          controller: _pageController,
          physics: ClampingScrollPhysics(),
          itemCount: dicas.length,
          itemBuilder: (context, index) => buildMovieSlider(index),
        ),
      ),
    );
  }

  Widget buildMovieSlider(int index) => AnimatedBuilder(
        animation: _pageController,
        builder: (context, child) {
          double value = 0;
          if (_pageController.position.haveDimensions) {
            value = index - _pageController.page;
            value = (value * 0.038).clamp(-1, 1);
          }
          return AnimatedOpacity(
            duration: Duration(milliseconds: 350),
            opacity: initialPage == index ? 1 : 0.4,
            child: Transform.rotate(
              angle: math.pi * value,
              child: DicasCard(
                dicas: dicas[index],
              ),
            ),
          );
        },
      );
}
