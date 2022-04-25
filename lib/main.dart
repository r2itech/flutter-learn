// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppBar myAppBar = AppBar(
      title: Text("Tugas 2"),
    );

    final double heightDevice = MediaQuery.of(context).size.height;
    final double heightBody = heightDevice -
        (myAppBar.preferredSize.height + MediaQuery.of(context).padding.top);
    final double widhtDevice = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: myAppBar,
        body: Column(
          children: [
            Container(
              height: heightBody * 0.2,
              width: widhtDevice,
              color: Colors.redAccent,
              child: Row(
                children: [
                  Container(
                      width: widhtDevice * 0.5,
                      padding: EdgeInsets.only(
                          left: 35, right: 20, top: 20, bottom: 20),
                      child: ListView.builder(itemBuilder: (context, i) {
                        return AspectRatio(
                          aspectRatio: 7 / 6,
                          child: Container(
                            margin: EdgeInsets.only(bottom: 20),
                            color: Colors.yellow,
                          ),
                        );
                      })),
                  Container(
                      width: widhtDevice * 0.5,
                      padding: EdgeInsets.only(
                          left: 20, right: 35, top: 20, bottom: 20),
                      child: ListView.builder(itemBuilder: (context, i) {
                        return AspectRatio(
                          aspectRatio: 7 / 6,
                          child: Container(
                            margin: EdgeInsets.only(bottom: 20),
                            color: Colors.yellow,
                          ),
                        );
                      })),
                ],
              ),
            ),
            Container(
              height: heightBody * 0.43,
              width: widhtDevice,
              padding:
                  EdgeInsets.only(left: 20, right: 20, top: 34, bottom: 34),
              color: Colors.lightGreenAccent,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  AspectRatio(
                    aspectRatio: 6 / 7,
                    child: Container(
                      margin: EdgeInsets.only(right: 35),
                      color: Colors.green,
                    ),
                  ),
                  AspectRatio(
                    aspectRatio: 6 / 7,
                    child: Container(
                      margin: EdgeInsets.only(right: 35),
                      color: Colors.green,
                    ),
                  ),
                  AspectRatio(
                    aspectRatio: 6 / 7,
                    child: Container(
                      margin: EdgeInsets.only(right: 35),
                      color: Colors.green,
                    ),
                  ),
                  AspectRatio(
                    aspectRatio: 6 / 7,
                    child: Container(
                      margin: EdgeInsets.only(right: 35),
                      color: Colors.green,
                    ),
                  ),
                  AspectRatio(
                    aspectRatio: 6 / 7,
                    child: Container(
                      margin: EdgeInsets.only(right: 35),
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: heightBody * 0.37,
              width: widhtDevice,
              padding: EdgeInsets.all(20),
              color: Colors.blueAccent,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  AspectRatio(
                    aspectRatio: 8 / 3,
                    child: Container(
                      margin: EdgeInsets.only(bottom: 35),
                      color: Colors.yellow,
                    ),
                  ),
                  AspectRatio(
                    aspectRatio: 8 / 3,
                    child: Container(
                      margin: EdgeInsets.only(bottom: 35),
                      color: Colors.yellow,
                    ),
                  ),
                  AspectRatio(
                    aspectRatio: 8 / 3,
                    child: Container(
                      margin: EdgeInsets.only(bottom: 35),
                      color: Colors.yellow,
                    ),
                  ),
                  AspectRatio(
                    aspectRatio: 8 / 3,
                    child: Container(
                      margin: EdgeInsets.only(bottom: 35),
                      color: Colors.yellow,
                    ),
                  ),
                  AspectRatio(
                    aspectRatio: 8 / 3,
                    child: Container(
                      margin: EdgeInsets.only(bottom: 35),
                      color: Colors.yellow,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
