import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rating_bar/rating_bar.dart';
import 'package:resep_nusantara/model/nusantara_recipe.dart';

var contentTitleTextStyle =
    TextStyle(fontFamily: 'Tajawal-Bold', fontSize: 16.0);
var contentTextStyle = TextStyle(fontFamily: 'Tajawal-Regular', fontSize: 14.0);
var contentBoxDecoration = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.circular(16.0),
);

class DetailScreen extends StatelessWidget {
  final NusantaraRecipe recipe;

  DetailScreen({@required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Image.asset(recipe.imageAsset, fit: BoxFit.fill),
                  SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundColor: Color(0xffFC4041),
                        child: IconButton(
                            icon: Icon(Icons.arrow_back, color: Colors.white),
                            onPressed: () {
                              Navigator.pop(context);
                            }),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        recipe.name,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 30.0, fontFamily: 'Tajawal-Bold'),
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
                                        initialRating: recipe.rating,
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
                                        recipe.numberOfReviews.toString(),
                                        style: TextStyle(
                                            fontSize: 12.0,
                                            fontFamily: 'Tajawal-Regular'),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 8),
                                  Row(
                                    children: <Widget>[
                                      Text('Oleh ',
                                          style: TextStyle(
                                              fontSize: 14.0,
                                              fontFamily: 'Tajawal-Regular')),
                                      Text(recipe.author,
                                          style: TextStyle(
                                              fontSize: 14.0,
                                              fontFamily: 'Tajawal-Bold')),
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
                                          Icon(Icons.access_time,
                                              size: 16.0, color: Colors.white),
                                          Text(
                                            ' ${recipe.time}',
                                            style: TextStyle(
                                                fontSize: 14.0,
                                                color: Colors.white,
                                                fontFamily: 'Tajawal-Regular'),
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
                                          Icon(Icons.people_alt_rounded,
                                              size: 16.0, color: Colors.white),
                                          Text(
                                            ' ${recipe.portion}',
                                            style: TextStyle(
                                                fontSize: 14.0,
                                                color: Colors.white,
                                                fontFamily: 'Tajawal-Regular'),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8.0)),
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
                      bottomLeft: Radius.circular(16.0)),
                ),
              ),
              SizedBox(height: 16.0),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Deskripsi', style: contentTitleTextStyle),
                      SizedBox(height: 6.0),
                      Text(recipe.description, style: contentTextStyle),
                    ],
                  ),
                ),
                decoration: contentBoxDecoration,
              ),
              SizedBox(height: 16.0),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Bahan yang dibutuhkan',
                          style: contentTitleTextStyle),
                      SizedBox(height: 6.0),
                      Text(recipe.ingredient, style: contentTextStyle),
                    ],
                  ),
                ),
                decoration: contentBoxDecoration,
              ),
              SizedBox(height: 16.0),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Cara Memasak', style: contentTitleTextStyle),
                      SizedBox(height: 6.0),
                      Text(recipe.howToCook, style: contentTextStyle),
                    ],
                  ),
                ),
                decoration: contentBoxDecoration,
              ),
              SizedBox(height: 16.0),
            ],
          ),
        ),
      ),
      floatingActionButton: FavoriteButton(),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
      child: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.white,
      ),
    );
  }
}
