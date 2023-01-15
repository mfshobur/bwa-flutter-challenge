import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../theme.dart';

class FeaturedTile extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String genre;
  int rating;

  FeaturedTile({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.genre,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    ColorScheme themeColor = Theme.of(context).colorScheme;

    List<Widget> getRating() {
      List<Widget> star = [];

      for (int i = 0; i < 5; i++) {
        if (rating > 0) {
          star.add(
            Image.asset(
              'assets/images/star_yellow.png',
              width: 18,
              height: 18,
            ),
          );
          rating--;
        } else {
          star.add(
            Image.asset(
              'assets/images/star_grey.png',
              width: 18,
              height: 18,
            ),
          );
        }
        star.add(
          SizedBox(
            width: 2,
          ),
        );
      }
      return star;
    }

    return Container(
      width: 300,
      height: 279,
      margin: const EdgeInsets.only(left: 24),
      child: Column(
        children: [
          Container(
            width: 300,
            height: 207,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(21),
              boxShadow: [
                BoxShadow(
                  color: Color(0xff5E38E5),
                  blurRadius: 20,
                  offset: Offset(0, 8),
                  spreadRadius: -15,
                ),
              ],
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/${imageUrl}',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 26,
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 20,
                      color: themeColor.primary,
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    genre,
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Avenir-Book',
                      color: greyColor,
                    ),
                  ),
                ],
              ),
              Spacer(),
              Row(
                children: getRating(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
