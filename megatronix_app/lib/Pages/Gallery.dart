import 'package:flutter/material.dart';

class GalleryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(' Megatronix Gallery')),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: GalleryGrid(),
        ),
      ),
    );
  }
}

class GalleryGrid extends StatelessWidget {
  final List<String> imagePaths = [
    'assets/image1.jpg',
    'assets/image2.jpg',
    'assets/image3.jpg',
    'assets/image4.jpg',
    'assets/image5.jpg',
    'assets/image6.jpg',
    'assets/image7.jpg',
    'assets/image8.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Number of columns in the grid
        mainAxisSpacing: 8.0, // Vertical spacing between items
        crossAxisSpacing: 8.0, // Horizontal spacing between items
      ),
      itemCount: imagePaths.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            // Handle tapping on an image (e.g., show larger image)
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                image: AssetImage(imagePaths[index]),
                fit: BoxFit.cover,
              ),
            ),
          ),
        );
      },
    );
  }
}
