import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../theme.dart';

class MovieTile extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String genre;
  int rating;
  MovieTile({
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
      margin: const EdgeInsets.only(bottom: 30),
      child: Row(
        children: [
          Container(
            width: 100,
            height: 125.6,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(21),
              boxShadow: [
                BoxShadow(
                  color: Color(0xff169E9F),
                  blurRadius: 20,
                  offset: Offset(0, 10),
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
            width: 20,
          ),
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
              SizedBox(height: 4),
              Text(
                genre,
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Avinar-Book',
                  color: greyColor,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: getRating(),
              ),
            ],
          )
        ],
      ),
    );
  }
}
