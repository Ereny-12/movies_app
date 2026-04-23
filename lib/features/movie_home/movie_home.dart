import 'package:flutter/material.dart';

import '../../core/resources/colors_manager.dart';
import 'movie_slider.dart';

class MovieHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: _buildBottomNav(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                _buildHeroBackground(),
                Column(
                  children: [
                    const SizedBox(height: 60),
                    const Text("Available Now",
                        style: TextStyle(color: ColorsManager.white, fontSize: 24, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 20),
                    MovieSlider(),
                    const SizedBox(height: 20),
                    const Text("Watch Now",
                        style: TextStyle(color: ColorsManager.white, fontSize: 28, fontWeight: FontWeight.w900)),
                  ],
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Action", style: TextStyle(color: ColorsManager.white, fontSize: 18, fontWeight: FontWeight.bold)),
                  TextButton(onPressed: () {}, child: const Text("See More >", style: TextStyle(color: ColorsManager.yellow))),
                ],
              ),
            ),

            _buildMovieHorizontalList(),
          ],
        ),
      ),
    );
  }



  Widget _buildMovieHorizontalList() {
    return SizedBox(
      height: 180,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Container(
            width: 120,
            margin: const EdgeInsets.only(left: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.grey[900],
              image: const DecorationImage(
                image: NetworkImage('https://m.media-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }


  Widget _buildBottomNav() {
    return BottomNavigationBar(
      backgroundColor: ColorsManager.black,
      selectedItemColor: ColorsManager.yellow,
      unselectedItemColor: ColorsManager.white,
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.directions_sharp), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
      ],
    );
  }


  Widget _buildHeroBackground() {
    return Container(
      height: 450,
      decoration: BoxDecoration(
        gradient: RadialGradient(
          colors: [Colors.blueGrey.withOpacity(0.3), Colors.transparent],
          radius: 0.8,
        ),
      ),
    );
  }
}