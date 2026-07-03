import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class TravelCard extends StatelessWidget {
  final String name;
  final String description;
  final double rating;
  final String image;
  final bool isFavorite;
  final VoidCallback onFavoriteToggle;
  final double latitude;
  final double longitude;

  const TravelCard({
    required this.name,
    required this.description,
    required this.rating,
    required this.image,
    required this.isFavorite,
    required this.onFavoriteToggle,
    required this.latitude,
    required this.longitude,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed('/detail', arguments: {
          "name": name,
          "description": description,
          "rating": rating,
          "image": image,
          "latitude": latitude,
          "longitude": longitude,
        });
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[800],
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(
            image: NetworkImage(image),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            // Gradient overlay for text readability
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  gradient: LinearGradient(
                    colors: [Colors.black.withOpacity(0.6), Colors.transparent],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
              ),
            ),

            // Toggle Favorite icon
            Positioned(
              top: 8,
              left: 8,
              child: GestureDetector(
                onTap: onFavoriteToggle,
                child: Icon(
                  isFavorite ? Icons.favorite : Icons.favorite_border,
                  color: isFavorite ? Colors.red : Colors.white,
                ),
              ),
            ),

            // Rating
            Positioned(
              top: 8,
              right: 8,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.white60,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Text(
                      rating.toString(),
                      style: const TextStyle(color: Colors.black, fontSize: 12),
                    ),
                    const SizedBox(width: 4),
                    const Icon(Icons.star, color: Colors.yellow, size: 12),
                  ],
                ),
              ),
            ),

            // Destination Name and Description
            Positioned(
              bottom: 50,
              left: 10,
              right: 10,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      name,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      description,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 10,
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Explore Button
            Positioned(
              bottom: 8,
              left: 12,
              right: 12,
              child: SizedBox(
                height: 30,
                child: ElevatedButton(
                  onPressed: () {
                    // Handle explore button press
                    Get.toNamed('/explore', arguments: {
                      "name": name,
                      "description": description,
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    'Explore',
                    style: TextStyle(color: Colors.teal, fontSize: 12),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}