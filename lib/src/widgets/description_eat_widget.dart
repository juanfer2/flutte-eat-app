import 'package:flutter/material.dart';

class DescriptionEatWidget extends StatefulWidget {
  @override
  _DescriptionEatWidgetState createState() => _DescriptionEatWidgetState();
}

class _DescriptionEatWidgetState extends State<DescriptionEatWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'OPEN NOW UNTIL 7PM',
            style: TextStyle(
              color: Colors.grey,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 15.0),
          Text(
            'The Cinnamon Snail',
            style: TextStyle(
                color: Colors.black,
                fontSize: 27.0,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            children: <Widget>[
              Text(
                '17th st & Union Sq East',
                style: TextStyle(
                    color: Colors.grey,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 5.0),
              Icon(Icons.location_on),
              SizedBox(width: 5.0),
              Text(
                '400ft Away',
                style: TextStyle(
                    color: Colors.black.withOpacity(0.5),
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(height: 7.0),
          Row(
            children: <Widget>[
              Icon(Icons.wifi, color: Colors.green),
              SizedBox(width: 4.0),
              Text(
                'Location confirmed by 3 users today',
                style: TextStyle(
                    color: Colors.green,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold),
              )
            ],
          )
        ],
      ),
    );
  }
}
