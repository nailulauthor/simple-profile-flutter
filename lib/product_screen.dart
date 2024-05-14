import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:icon_badge/icon_badge.dart';
import 'package:profile/colors.dart';

class ProductScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Product',
        style: TextStyle(
          color: white
        ),),
        actions: [
          IconBadge(
            icon: Icon(Icons.notifications_none),
            itemCount: 5,
            badgeColor: Colors.red,
            itemColor: Colors.white,
            hideZero: true,
            onTap: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SectionTitle(title: 'Produk'),
            ProductList(),
            SizedBox(height: 20),
            SectionTitle(title: 'Galeri Foto'),
            Gallery(),
          ],
        ),
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: black,
        ),
      ),
    );
  }
}

class ProductList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          ProductCard(image: 'assets/images/batik0.jpg', name: 'Hokokai'),
          ProductCard(image: 'assets/images/batik1.jpg', name: 'Jlamprang'),
          ProductCard(image: 'assets/images/batik2.jpg', name: 'Mega Mendung'),
          // Add more ProductCard widgets for additional products
        ],
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String image;
  final String name;

  const ProductCard({required this.image, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      width: 120,
      child: Column(
        children: [
          Container(
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () {
                  // Handle product click
                },
                splashColor: Colors.blue.withOpacity(0.5),
                hoverColor: Colors.blue.withOpacity(0.2),
              ),
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            name,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: grey,
            ),
          ),
        ],
      ),
    );
  }
}

class Gallery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        itemCount: 3, // Number of gallery items
        itemBuilder: (context, index) {
          return GalleryItem(image: 'assets/images/batik$index.jpg');
        },
      ),
    );
  }
}

class GalleryItem extends StatelessWidget {
  final String image;

  const GalleryItem({required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            // Handle gallery item click
          },
          splashColor: Colors.blue.withOpacity(0.5),
          hoverColor: Colors.blue.withOpacity(0.2),
        ),
      ),
    );
  }
}
