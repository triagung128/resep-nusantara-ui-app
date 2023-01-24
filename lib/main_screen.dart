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
        backgroundColor: Color(0xffFC4041),
      ),
      body: ListView.builder(
        padding: EdgeInsets.only(
          right: 16.0,
          left: 16.0,
          top: 16.0,
        ),
        itemBuilder: (context, index) {
          final NusantaraRecipe recipe = nusantaraRecipeList[index];

          return Card(
            clipBehavior: Clip.hardEdge,
            margin: EdgeInsets.only(bottom: 16.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
            elevation: 4,
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => DetailScreen(recipe: recipe),
                  ),
                );
              },
              child: Container(
                height: 130,
                child: Row(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16.0),
                        bottomLeft: Radius.circular(16.0),
                      ),
                      child: Image.asset(
                        recipe.imageAsset,
                        width: 130,
                        height: 130,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  recipe.name,
                                  style: TextStyle(
                                    fontSize: 22.0,
                                    fontFamily: 'Tajawal-Bold',
                                  ),
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
                                    SizedBox(width: 5),
                                    Text(
                                      recipe.numberOfReviews.toString(),
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        fontFamily: 'Tajawal-Regular',
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 12),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      'Oleh ',
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        fontFamily: 'Tajawal-Regular',
                                      ),
                                    ),
                                    Text(
                                      recipe.author,
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        fontFamily: 'Tajawal-Bold',
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(
                                      Icons.access_time,
                                      size: 16.0,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      ' ${recipe.time}',
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        color: Colors.white,
                                        fontFamily: 'Tajawal-Regular',
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.people_alt_rounded,
                                      size: 16.0,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      ' ${recipe.portion}',
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        color: Colors.white,
                                        fontFamily: 'Tajawal-Regular',
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(16.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        itemCount: nusantaraRecipeList.length,
      ),
    );
  }
}
