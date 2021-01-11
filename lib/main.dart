import 'package:flutter/material.dart';

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
        backgroundColor: Color.fromARGB(255, 254, 206, 47),
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
                color: Color.fromARGB(255, 255, 255, 255),
                fontWeight: FontWeight.w900,
              ),
            )
          ],
        ),
      ),
      body: Container(
        color: Color.fromARGB(255, 255, 255, 255),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'Assets/hitting_mail.png',
                filterQuality: FilterQuality.high,
                fit: BoxFit.scaleDown,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
