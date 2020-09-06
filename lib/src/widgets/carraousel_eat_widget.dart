import 'package:flutter/material.dart';

class CarraouselEatWidget extends StatefulWidget {
  @override
  _CarraouselEatWidgetState createState() => _CarraouselEatWidgetState();
}

class _CarraouselEatWidgetState extends State<CarraouselEatWidget> {
  int photoIndex = 0;
  List<String> photos = [
    'assets/images/burger1.jpg',
    'assets/images/burger2.jpg',
    'assets/images/burger3.jpg',
    'assets/images/burger4.jpg'
  ];

  void _previousImage() {
    setState(() {
      print('_previousImage');
      photoIndex = photoIndex > 0 ? photoIndex - 1 : 0;
    });
  }

  void _nextImage() {
    setState(() {
      print('_nextImage');
      photoIndex = photoIndex < photos.length - 1 ? photoIndex + 1 : photoIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              height: 210.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(photos[photoIndex]),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  color: Colors.white,
                  onPressed: () {
                    print('Click');
                  },
                ),
                IconButton(
                  icon: Icon(Icons.favorite),
                  color: Colors.pink,
                  onPressed: () {
                    print('Click');
                  },
                ),
              ],
            ),
            GestureDetector(
              child: Container(
                height: 210.0,
                width: MediaQuery.of(context).size.width,
                color: Colors.transparent,
              ),
              onTap: _nextImage,
            ),
            GestureDetector(
              child: Container(
                height: 210.0,
                width: MediaQuery.of(context).size.width / 2,
                color: Colors.transparent,
              ),
              onTap: _previousImage,
            ),
            Positioned(
              top: 180.0,
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.grey,
                  ),
                  SizedBox(width: 2.0),
                  Text(
                    '4.0',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
