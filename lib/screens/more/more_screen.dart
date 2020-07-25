import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meu_money/components/my_bottom_nv_bar.dart';
import 'package:meu_money/constants.dart';
import 'package:meu_money/screens/categorias/categorias_screen.dart';
import 'package:meu_money/size_config.dart';

class MoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: buildAppBar(),
      body: SafeArea(
        child: Expanded(
          child: Column(
            children: <Widget>[
              Container(
                height: 100,
                decoration: BoxDecoration(color: Colors.black),
              ),
              Container(
                height: 490.0,
                decoration: BoxDecoration(
                  color: Color(0xFF373737),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0)),
                ),
                child: ListView(
                  children: <Widget>[
                    FlatButton(
                      onPressed: () {},
                      child: Container(
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.pause_circle_outline,
                              color: Colors.white,
                              size: 20.0,
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Text(
                              'Goals',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20.0),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25.0,
                      child: Divider(
                        height: 5.0,
                        color: Colors.black,
                        indent: 10.0,
                        endIndent: 10.0,
                      ),
                    ),
                    FlatButton(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CategoriasScreen(),
                        ),
                      ),
                      child: Container(
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.category,
                              color: Colors.white,
                              size: 20.0,
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Text(
                              'Categories',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20.0),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25.0,
                      child: Divider(
                        height: 5.0,
                        color: Colors.black,
                        indent: 10.0,
                        endIndent: 10.0,
                      ),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Container(
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.label,
                              color: Colors.white,
                              size: 20.0,
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Text(
                              'Tags',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20.0),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25.0,
                      child: Divider(
                        height: 5.0,
                        color: Colors.black,
                        indent: 10.0,
                        endIndent: 10.0,
                      ),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Container(
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.cloud_upload,
                              color: Colors.white,
                              size: 20.0,
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Text(
                              'Import data',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20.0),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25.0,
                      child: Divider(
                        height: 5.0,
                        color: Colors.black,
                        indent: 10.0,
                        endIndent: 10.0,
                      ),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Container(
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.message,
                              color: Colors.white,
                              size: 20.0,
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Text(
                              'Import SMS',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20.0),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25.0,
                      child: Divider(
                        height: 5.0,
                        color: Colors.black,
                        indent: 10.0,
                        endIndent: 10.0,
                      ),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Container(
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.cloud_download,
                              color: Colors.white,
                              size: 20.0,
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Text(
                              'Export reports',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20.0),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: MyBottomNavBar(),
    );
  }

  AppBar buildAppBar() {
    double defaultSize = SizeConfig.defaultSize;

    return AppBar(
      backgroundColor: Colors.black,
      leading: IconButton(
        icon: SvgPicture.asset(
          "assets/icons/menu.svg",
          color: Colors.white,
        ),
        onPressed: () {},
      ),
      centerTitle: true,
      title: Text(
        "Mais Opções",
        style: TextStyle(
          color: kPrimaryColor,
        ),
      ),
      actions: <Widget>[
        Container(
          margin: EdgeInsets.only(
            bottom: defaultSize,
          ),
          height: defaultSize * 5,
          width: defaultSize * 5,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.white,
              width: defaultSize * 0.5,
            ),
            image: DecorationImage(
              fit: BoxFit.contain,
              image: AssetImage(
                "assets/images/pic.png",
              ),
            ),
          ),
        ),
        SizedBox(
          width: SizeConfig.defaultSize * 0.5,
        ),
      ],
    );
  }
}
