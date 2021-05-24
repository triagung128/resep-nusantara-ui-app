import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rating_bar/rating_bar.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Image.asset('images/rendang.jpg'),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Rendang',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 30.0,
                            fontFamily: 'Tajawal-Bold'
                        ),
                      ),
                      SizedBox(height: 16.0),
                      Row(
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
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
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              margin: const EdgeInsets.only(left: 16.0),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      child: Row(
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
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10.0,
                                    ),
                                    Container(
                                      child: Row(
                                        children: <Widget>[
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
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(16.0),
                      bottomLeft: Radius.circular(16.0)
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Deskripsi', style: TextStyle(fontFamily: 'Tajawal-Bold', fontSize: 16.0)),
                      SizedBox(height: 6.0),
                      Text('Halo', style: TextStyle(fontFamily: 'Tajawal-Regular', fontSize: 14.0)),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16.0),
                ),
              ),
              SizedBox(height: 16.0),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Bahan yang dibutuhkan', style: TextStyle(fontFamily: 'Tajawal-Bold', fontSize: 16.0)),
                      SizedBox(height: 6.0),
                      Text('Halo', style: TextStyle(fontFamily: 'Tajawal-Regular', fontSize: 14.0)),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16.0),
                ),
              ),
              SizedBox(height: 16.0),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Cara Memasak', style: TextStyle(fontFamily: 'Tajawal-Bold', fontSize: 16.0)),
                      SizedBox(height: 6.0),
                      Text('Halo', style: TextStyle(fontFamily: 'Tajawal-Regular', fontSize: 14.0)),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}