import 'package:flutter/material.dart';

class CategoriasScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
          iconSize: 28.0,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.drafts),
            iconSize: 28.0,
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.more_horiz),
            iconSize: 28.0,
            onPressed: () {},
          ),
        ],
        centerTitle: true,
        title: Text(
          'Categories',
          style: TextStyle(
              color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
      ),
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
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0)),
                  color: Color(0xFF373737),
                ),
                child: ListView(
                  children: <Widget>[
                    Container(
                      height: 50,
                      width: 200,
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        children: <Widget>[
                          CircleAvatar(
                            backgroundColor: Colors.blueAccent,
                            radius: 25.0,
                            child: Icon(
                              Icons.save_alt,
                              color: Colors.white,
                              size: 20.0,
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            'Clothing',
                            style:
                                TextStyle(fontSize: 20.0, color: Colors.white),
                          ),
                          SizedBox(
                            width: 150,
                          ),
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
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Container(
                      height: 50,
                      width: 200,
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        children: <Widget>[
                          CircleAvatar(
                            backgroundColor: Colors.purple,
                            radius: 25.0,
                            child: Icon(
                              Icons.book,
                              color: Colors.white,
                              size: 20.0,
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            'Education',
                            style:
                                TextStyle(fontSize: 20.0, color: Colors.white),
                          ),
                          SizedBox(
                            width: 150,
                          ),
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
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Container(
                      height: 50,
                      width: 200,
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        children: <Widget>[
                          CircleAvatar(
                            backgroundColor: Colors.green,
                            radius: 25.0,
                            child: Icon(
                              Icons.wb_sunny,
                              color: Colors.white,
                              size: 20.0,
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            'Entertaiment',
                            style:
                                TextStyle(fontSize: 20.0, color: Colors.white),
                          ),
                          SizedBox(
                            width: 150,
                          ),
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
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Container(
                      height: 50,
                      width: 200,
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        children: <Widget>[
                          CircleAvatar(
                            backgroundColor: Colors.blue,
                            radius: 25.0,
                            child: Icon(
                              Icons.fastfood,
                              color: Colors.white,
                              size: 20.0,
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            'Food And Drink',
                            style:
                                TextStyle(fontSize: 20.0, color: Colors.white),
                          ),
                          SizedBox(
                            width: 150,
                          ),
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
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Container(
                      height: 50,
                      width: 200,
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        children: <Widget>[
                          CircleAvatar(
                            backgroundColor: Colors.greenAccent,
                            radius: 25.0,
                            child: Icon(
                              Icons.blur_circular,
                              color: Colors.white,
                              size: 20.0,
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            'Health',
                            style:
                                TextStyle(fontSize: 20.0, color: Colors.white),
                          ),
                          SizedBox(
                            width: 150,
                          ),
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
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Container(
                      height: 50,
                      width: 200,
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        children: <Widget>[
                          CircleAvatar(
                            backgroundColor: Colors.orange,
                            radius: 25.0,
                            child: Icon(
                              Icons.home,
                              color: Colors.white,
                              size: 20.0,
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            'Home',
                            style:
                                TextStyle(fontSize: 20.0, color: Colors.white),
                          ),
                          SizedBox(
                            width: 150,
                          ),
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
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Container(
                      height: 50,
                      width: 200,
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        children: <Widget>[
                          CircleAvatar(
                            backgroundColor: Colors.red,
                            radius: 25.0,
                            child: Icon(
                              Icons.add_alert,
                              color: Colors.white,
                              size: 20.0,
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            'Payments',
                            style:
                                TextStyle(fontSize: 20.0, color: Colors.white),
                          ),
                          SizedBox(
                            width: 150,
                          ),
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
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
