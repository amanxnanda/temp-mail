import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:bordered_text/bordered_text.dart';
import 'constant.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

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
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(
                'Assets/hitting_mail.png',
                filterQuality: FilterQuality.high,
                fit: BoxFit.scaleDown,
              ),
              Container(
                decoration: kBoxDecoration.copyWith(
                    borderRadius: BorderRadius.circular(_width * 0.03)),
                margin: EdgeInsets.all(_width * 0.05),
                height: _height * 0.09,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 8, 15, 8),
                      child: Icon(
                        Icons.mail,
                        color: kYellowColor,
                      ),
                      
                    ),
                    BorderedText(
                      strokeWidth: 1,
                      child: Text(
                        'amannanda8@gmail.com',
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CopyAndRefresh(
                      width: _width,
                      height: _height,
                      text: 'Regenerate',
                      icon: Icons.refresh),
                  CopyAndRefresh(
                    width: _width,
                    height: _height,
                    text: 'Copy email',
                    icon: Icons.copy,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CopyAndRefresh extends StatelessWidget {
  const CopyAndRefresh({
    Key key,
    @required double width,
    @required double height,
    @required this.text,
    @required this.icon,
  })  : _width = width,
        _height = height,
        super(key: key);

  final double _width;
  final double _height;
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: _width * 0.3,
      height: _height * 0.07,
      margin: EdgeInsets.symmetric(horizontal: _width * 0.05),
      decoration: kBoxDecoration.copyWith(),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Icon(icon),
          ),
          Text(
            text,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
