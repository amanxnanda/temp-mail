import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'constant.dart';
import 'copy_and_refresh.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: kYellowColor,
        title: Row(
          children: [
            Text(
              "TEMP",
              style: TextStyle(
                color: Color.fromARGB(255, 26, 26, 26),
                letterSpacing: _width * 0.02,
                fontWeight: FontWeight.w900,
              ),
            ),
            Text(
              'MAIL',
              style: TextStyle(
                letterSpacing: _width * 0.02,
                color: kWhiteColor,
                fontWeight: FontWeight.w900,
              ),
            )
          ],
        ),
      ),
      body: Container(
        color: kWhiteColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 4,
              child: Container(
                height: _height * 0.25,
                child: Image.asset(
                  'Assets/hitting_mail.png',
                  filterQuality: FilterQuality.high,
                ),
              ),
            ),
            //email space
            Expanded(
              flex: 2,
              child: Container(
                decoration: kBoxDecoration.copyWith(
                    borderRadius: BorderRadius.circular(_width * 0.03)),
                margin: EdgeInsets.all(_width * 0.05),
                // height: _height * 0.09,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // Padding(
                    //   padding: const EdgeInsets.fromLTRB(8, 8, 15, 10),
                    //   child: Icon(
                    //     Icons.mail_outline,
                    //     color: kYellowColor,
                    //   ),
                    // ),
                    BorderedText(
                      strokeWidth: 1,
                      child: Text(
                        'amannanda8@gmail.com',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: kYellowColor,
                          fontSize: _width * 0.062,
                          //fontWeight: FontWeight.w600,

                          //fontFamily: 'LuckiestGuy',
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CopyAndRefresh(
                      width: _width, text: 'Regenerate', icon: Icons.refresh),
                  CopyAndRefresh(
                    width: _width,
                    text: 'Copy email',
                    icon: Icons.copy,
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 6,
              child: Container(
                margin: EdgeInsets.all(_width * 0.05),
                decoration: kBoxDecoration,
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Inbox',style: TextStyle(fontSize: _width*0.05), ),
                    ),
                    // ListView(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
