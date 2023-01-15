import 'dart:ui';

import 'package:bwa_flutter_challenge/screens/widgets/movie_tile.dart';
import 'package:bwa_flutter_challenge/theme.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorScheme themeColor = Theme.of(context).colorScheme;

    Widget searchBar() {
      return Container(
        margin: const EdgeInsets.only(top: 38, bottom: 35),
        padding: const EdgeInsets.symmetric(
          horizontal: 22,
          vertical: 11,
        ),
        width: 327,
        height: 45,
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(100),
        ),
        child: Row(
          children: [
            Image.asset(
              'assets/images/search_icon.png',
              width: 22,
              height: 22,
            ),
            SizedBox(
              width: 16,
            ),
            Text(
              'The Dar',
              style: TextStyle(
                fontFamily: 'Avenir-Roman',
                fontSize: 16,
                color: themeColor.primary,
              ),
            ),
            Container(
              width: 1.5,
              color: themeColor.primary,
            ),
          ],
        ),
      );
    }

    Widget searchResult() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'Search Result ',
                style: TextStyle(
                  fontSize: 20,
                  color: themeColor.primary,
                ),
              ),
              Text(
                '(3)',
                style: TextStyle(
                  fontFamily: 'Avenir-Book',
                  fontSize: 20,
                  color: themeColor.primary,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          MovieTile(
            imageUrl: 'search_result_1.png',
            title: 'The Dark II',
            genre: 'Horror',
            rating: 4,
          ),
          MovieTile(
            imageUrl: 'search_result_2.png',
            title: 'The Dark Knight',
            genre: 'Heroes',
            rating: 5,
          ),
          MovieTile(
            imageUrl: 'search_result_3.png',
            title: 'The Dark Tower',
            genre: 'Action',
            rating: 4,
          ),
        ],
      );
    }

    Widget suggestButton() {
      return SizedBox(
        width: 220.0,
        height: 50.0,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(37),
            ),
          ),
          child: Text(
            'Suggest Movie',
            style: TextStyle(
              fontFamily: 'Avenir-Roman',
              fontSize: 16,
              color: themeColor.onPrimary,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              right: 0,
              child: Container(
                width: 279,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xffFBFBFD),
                      Color(0xffF0F1F6),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  searchBar(),
                  searchResult(),
                  suggestButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
