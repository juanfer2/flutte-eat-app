import 'package:flutter/material.dart';

import 'package:eatApp/src/widgets/carraousel_eat_widget.dart';
import 'package:eatApp/src/widgets/description_eat_widget.dart';
import 'package:eatApp/src/widgets/featuredItems/feature_items_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          CarraouselEatWidget(),
          SizedBox(height: 15.0),
          DescriptionEatWidget(),
          SizedBox(height: 20.0),
          Container(
            padding: EdgeInsets.only(left: 20.0),
            child: Row(
              children: <Widget>[
                Text(
                  'FEATURED ITEMS',
                  style: TextStyle(
                    color: Colors.grey,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 20.0),
          FeatureItemsWidget(),
        ],
      ),
    );
  }
}
