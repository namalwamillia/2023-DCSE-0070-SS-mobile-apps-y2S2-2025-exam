
import 'package:flutter/material.dart';

class MockupScreenTwo extends StatelessWidget {
  const MockupScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/image5.png', fit: BoxFit.cover),
              const SizedBox(height: 30),

              // What’s Popular
              sectionHeader('What’s Popular'),
              horizontalMovieScroll([
                movieCard('Birds of Prey', 'Action, Crime, Comedy', 'assets/image1.png', 7.2),
                movieCard('Red Sparrow', 'Mystery, Thriller', 'assets/image2.png', 6.5),
              ]),

              const SizedBox(height: 20),

              // Now Playing
              sectionHeader('Now Playing'),
              horizontalMovieScroll([
                movieCard('To All the Boys...', 'Romance, Comedy', 'assets/image3.png', 6.9),
                movieCard('Ford v Ferrari', 'Drama, Action', 'assets/image4.png', 7.2),
              ]),
             
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/screen_one');
                  },
                  child: const Text('Go to MockupScreenOne'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget sectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Text(
        title,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget horizontalMovieScroll(List<Widget> movieCards) {
    return SizedBox(
      height: 150,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: movieCards,
      ),
    );
  }

  Widget movieCard(String title, String genre, String image, double rating) {
    return Container(
      width: 120,
      margin: const EdgeInsets.only(right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(image, width: 120, height: 80, fit: BoxFit.cover),
          ),
          const SizedBox(height: 8),
          Text(title, style: const TextStyle(fontWeight: FontWeight.bold), maxLines: 1, overflow: TextOverflow.ellipsis),
          Text(genre, style: const TextStyle(fontSize: 12), maxLines: 1, overflow: TextOverflow.ellipsis),
          const SizedBox(height: 4),
          Row(
            children: [
              const Icon(Icons.star, size: 14, color: Colors.orange),
              const SizedBox(width: 4),
              Text(rating.toString(), style: const TextStyle(fontSize: 12)),
            ],
          ),
        ],
      ),
    );
  }
}