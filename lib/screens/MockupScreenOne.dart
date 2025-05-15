
import 'package:flutter/material.dart';

class MockupScreenOne extends StatelessWidget {
  const MockupScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.purple,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.movie), label: 'Movies'),
          BottomNavigationBarItem(icon: Icon(Icons.bookmark), label: 'Bookmark'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Discover & Enjoy\nYour Favourite Movies',
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                  Icon(Icons.filter_list),
                ],
              ),
              const SizedBox(height: 16),

           
              Row(
                children: [
                  _buildTab('Popular', true),
                  _buildTab('Upcoming', false),
                  _buildTab('Now Playing', false),
                ],
              ),

              const SizedBox(height: 16),

              Expanded(
                child: ListView(
                  children: [
                    _buildMovieTile(
                      'To All the Boys: P.S. I Still Love You (2019)',
                      '2019 • 1h 48m',
                      'Romance, Comedy',
                      'assets/image1.png',
                      7.3,
                    ),
                    _buildMovieTile(
                      'Baby Driver',
                      '2019 • 1h 53m',
                      'Car Action, Crime, Drama',
                      'assets/image2.png',
                      7.2,
                    ),
                    _buildMovieTile(
                      'John Wick',
                      '2019 • 2h 10m',
                      'Action, Crime, Thriller',
                      'assets/image3.png',
                      7.2,
                    ),
                    _buildMovieTile(
                      'Exit',
                      '2019 • 2h 10m',
                      'Action, Comedy',
                      'assets/image4.png',
                      7.1,
                    ),
                  ],
                ),
              ),
            
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/screen_two');
                  },
                  child: const Text('Go to MockupScreenTwo'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTab(String title, bool selected) {
    return Container(
      margin: const EdgeInsets.only(right: 12),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: selected ? const Color.fromARGB(255, 42, 159, 145) : Colors.grey[300],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        title,
        style: TextStyle(
          color: selected ? Colors.white : Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildMovieTile(String title, String time, String genre, String image, double rating) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: Image.asset(image, width: 50, height: 80, fit: BoxFit.cover),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text('$time\n$genre'),
        isThreeLine: true,
        trailing: CircleAvatar(
          radius: 16,
          backgroundColor: Colors.green[100],
          child: Text(rating.toString(), style: const TextStyle(color: Colors.black)),
        ),
      ),
    );
  }
}