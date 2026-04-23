import 'package:flutter/material.dart';

import '../../core/resources/colors_manager.dart';

class MovieSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [

          _buildStaticCard(height: 250, width: 150,
              imageUrl: 'https://m.media-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_.jpg1'),

          const SizedBox(width: 10),
          _buildStaticCard(height: 320, width: 220,
              imageUrl: 'https://m.media-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_.jpg'),

          const SizedBox(width: 10),
          _buildStaticCard(height: 250, width: 150,
              imageUrl: 'https://m.media-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_.jpg2'),
        ],
      ),
    );
  }

  Widget _buildStaticCard({required double height, required double width, required String imageUrl}) {
    return Center(
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: Colors.grey[900],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Stack(
          children: [
            Positioned.fill(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  imageUrl,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) =>
                  const Icon(Icons.movie, color: ColorsManager.white),
                ),
              ),
            ),
            Positioned(
              top: 10,
              left: 10,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Text(
                      "7.7",
                      style: TextStyle(
                        color: ColorsManager.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 4),
                    Icon(Icons.star, color: ColorsManager.yellow, size: 14),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}