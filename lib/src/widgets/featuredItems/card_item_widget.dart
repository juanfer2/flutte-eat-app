import 'package:flutter/material.dart';

class CardItemWidget extends StatefulWidget {
  @override
  _CardItemWidgetState createState() => _CardItemWidgetState();
}

class _CardItemWidgetState extends State<CardItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          height: 100.0,
          width: 100.0,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/burger1.jpg'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(7.0),
                bottomRight: Radius.circular(7.0),
              )),
        ),
        SizedBox(
          width: 10.0,
        ),
        Container(
          height: 100.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Maple Mustard Tempeh',
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5.0),
              Text(
                'Marinated kale, onion, tomato and roasted',
                style: TextStyle(
                  fontSize: 11.0,
                  fontFamily: 'Montserrat',
                  // fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 35.0),
              Text(
                '\$11.25',
                style: TextStyle(
                  fontSize: 20.0,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
