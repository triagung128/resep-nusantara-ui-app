import 'package:flutter/material.dart';
import 'package:rating_bar/rating_bar.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resep Nusantara'),
      ),
      body: Card(
        margin: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16.0),
                  bottomLeft: Radius.circular(16.0)
                ),
                child: Image.asset(
                  'images/rendang.jpg',
                  width: 130,
                  height: 130,
                  fit: BoxFit.cover
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                          'Rendang',
                          style: TextStyle(fontSize: 22.0, fontFamily: 'Tajawal-Bold'),
                        ),
                        Row(
                          children: <Widget>[
                            RatingBar.readOnly(
                              initialRating: 4.5,
                              isHalfAllowed: true,
                              halfFilledIcon: Icons.star_half,
                              filledIcon: Icons.star,
                              emptyIcon: Icons.star_border,
                              size: 16,
                              filledColor: Color(0xffFC4041),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '987',
                              style: TextStyle(fontSize: 12.0, fontFamily: 'Tajawal-Regular'),
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: <Widget>[
                            Text('Oleh ', style: TextStyle(fontSize: 14.0, fontFamily: 'Tajawal-Regular')),
                            Text('Bu Sifa', style: TextStyle(fontSize: 14.0, fontFamily: 'Tajawal-Bold')),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 180,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Icon(
                            Icons.access_time,
                            size: 16.0,
                            color: Colors.white
                          ),
                          Text(
                            ' 180 min',
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.white,
                              fontFamily: 'Tajawal-Regular'
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.people_alt_rounded,
                            size: 16.0,
                            color: Colors.white
                          ),
                          Text(
                            ' 10 orang',
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.white,
                              fontFamily: 'Tajawal-Regular'
                            ),
                          )
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(16.0)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}