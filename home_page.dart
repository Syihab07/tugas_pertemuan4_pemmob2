import 'package:flutter/material.dart';
import 'widget/movie_carousel.dart';
import 'widget/movie_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            MovieCarousel(),
            SizedBox(height: 10),
            MovieSection(title: '🔥 Trending Now'),
            MovieSection(title: '⭐ Popular Picks'),
            MovieSection(title: '🎥 Top Rated'),
          ],
        ),
      ),
    );
  }
}
