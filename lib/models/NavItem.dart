import 'package:flutter/material.dart';
import 'package:meu_money/screens/comunidade/comunidade_screen.dart';
import 'package:meu_money/screens/home/home_screen.dart';
import 'package:meu_money/screens/more/more_screen.dart';
import 'package:meu_money/screens/transacoes/transacoes_screen.dart';

class NavItem {
  final int id;
  final String icon;
  final Widget destination;

  NavItem({this.id, this.icon, this.destination});

  bool destinationChecker() {
    if (destination != null) {
      return true;
    }
    return false;
  }
}

class NavItems extends ChangeNotifier {
  int selectedIndex = 0;

  void changeNavIndex({int index}) {
    selectedIndex = index;
    notifyListeners();
  }

  List<NavItem> items = [
    NavItem(
      id: 1,
      icon: "assets/icons/home.svg",
      destination: HomeScreen(),
    ),
    NavItem(
      id: 2,
      icon: "assets/icons/list.svg",
      destination: TransacoesScreen(),
    ),
    NavItem(
      id: 3,
      icon: "assets/icons/chat.svg",
      destination: ComunidadeScreen(),
    ),
    NavItem(
      id: 4,
      icon: "assets/icons/user.svg",
      destination: MoreScreen(),
    ),
  ];
}
