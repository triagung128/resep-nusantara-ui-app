import 'package:flutter/material.dart';
import 'package:rating_bar/rating_bar.dart';
import 'package:resep_nusantara/detail_screen.dart';
import 'package:resep_nusantara/model/nusantara_recipe.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resep Nusantara'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final NusantaraRecipe recipe = nusantaraRecipeList[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen(recipe: recipe);
              }));
            },
            child: Card(
              margin: EdgeInsets.only(left: 8.0, right: 8.0, bottom: 4.0, top: 4.0),
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
                          bottomLeft: Radius.circular(16.0)),
                      child: Image.asset(recipe.imageAsset,
                          width: 130, height: 130, fit: BoxFit.cover),
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
                                recipe.name,
                                style: TextStyle(
                                    fontSize: 22.0, fontFamily: 'Tajawal-Bold'),
                              ),
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
                        Container(
                          width: 180,
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(16.0)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: nusantaraRecipeList.length,
      ),
    );
  }
}
