import 'package:flutter/material.dart';

import 'constant.dart';

class CopyAndRefresh extends StatelessWidget {
  const CopyAndRefresh({
    Key key,
    @required double width,
    
    @required this.text,
    @required this.icon,
  })  : _width = width,
       
        super(key: key);

  final double _width;
 
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: _width * 0.4,
      // height: _height * 0.055,
      margin: EdgeInsets.symmetric(horizontal: _width * 0.05),
      decoration: kBoxDecoration.copyWith(
        borderRadius: BorderRadius.circular(_width * 0.05),
      ),
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
