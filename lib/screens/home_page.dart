import 'package:bwa_flutter_challenge/screens/search_page.dart';
import 'package:bwa_flutter_challenge/screens/widgets/featured_tile.dart';
import 'package:bwa_flutter_challenge/screens/widgets/movie_tile.dart';
import 'package:bwa_flutter_challenge/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorScheme themeColor = Theme.of(context).colorScheme;

    Widget header() {
      return Container(
        margin: const EdgeInsets.only(
          top: 29,
          left: 24,
          bottom: 30,
        ),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Moviez',
                  style: TextStyle(
                    fontSize: 28,
                    color: themeColor.primary,
                  ),
                ),
                Text(
                  'Watch much easier',
                  style: TextStyle(
                    fontFamily: 'Avenir-Book',
                    fontSize: 16,
                    color: greyColor,
                  ),
                ),
              ],
            ),
            Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SearchPage(),
                  ),
                );
              },
              child: Container(
                width: 55,
                height: 45,
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(21),
                    bottomLeft: Radius.circular(21),
                  ),
                ),
                child: Center(
                  child: Image.asset(
                    'assets/images/search_icon.png',
                    width: 22,
                    height: 22,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget featured() {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            FeaturedTile(
              imageUrl: 'featured_1.png',
              title: 'John Wick 4',
              genre: 'Action, Crime',
              rating: 5,
            ),
            FeaturedTile(
              imageUrl: 'featured_2.png',
              title: 'Bohemian',
              genre: 'Documentary',
              rating: 3,
            ),
            SizedBox(
              width: 24,
            ),
          ],
        ),
      );
    }

    Widget fromDisney() {
      return Container(
        margin: const EdgeInsets.only(
          top: 30,
          left: 24,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'From Disney',
              style: TextStyle(
                fontSize: 24,
                color: themeColor.primary,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            MovieTile(
              imageUrl: 'from_disney_1.png',
              title: 'Mulan Session',
              genre: 'History, War',
              rating: 3,
            ),
            MovieTile(
              imageUrl: 'from_disney_2.png',
              title: 'Beauty & Beast',
              genre: 'Sci-Fiction',
              rating: 5,
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xffFDFDFE),
                    Color(0xffF3F4F8),
                  ],
                ),
              ),
            ),
            ListView(
              children: [
                header(),
                featured(),
                fromDisney(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
