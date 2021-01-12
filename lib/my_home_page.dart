import 'package:flutter/material.dart';
import 'dart:ui';
import 'constant.dart';
import 'copy_and_refresh.dart';
import 'package:auto_size_text/auto_size_text.dart';

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
      backgroundColor: kWhiteColor,
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 4,
            child: Image.asset(
              'Assets/hitting_mail.png',
              filterQuality: FilterQuality.high,
              fit: BoxFit.scaleDown,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              decoration: kBoxDecoration.copyWith(
                  borderRadius: BorderRadius.circular(_width * 0.03)),
              margin: EdgeInsets.all(_width * 0.05),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 8, 15, 8),
                    child: Icon(
                      Icons.mail,
                      color: kYellowColor,
                    ),
                  ),
                  Expanded(
                    child: AutoSizeText(
                      'amannanda8@gmail.com',
                      maxLines: 1,
                      style: TextStyle(
                        color: kYellowColor,
                        fontSize: _width * 0.07,
                        fontWeight: FontWeight.w600,
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
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: CopyAndRefresh(
                    text: 'Regenerate',
                    icon: Icons.refresh,
                    width: _width,
                  ),
                ),
                Expanded(
                  child: CopyAndRefresh(
                    text: 'Copy email',
                    icon: Icons.copy,
                    width: _width,
                  ),
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Inbox',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
