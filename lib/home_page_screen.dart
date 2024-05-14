import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icon_badge/icon_badge.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Beranda Aplikasi',
          style: GoogleFonts.poppins(),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconBadge(
              icon: Icon(Icons.notifications),
              itemCount: 3,
              badgeColor: Colors.red,
              hideZero: true,
              onTap: () {
                // Handle notification icon tap
              },
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Selamat datang di Beranda Aplikasi!',
              style: GoogleFonts.poppins(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20.0),
            Image.asset(
              'assets/images/profile1.jpg',
              height: 200.0,
            ),
          ],
        ),
      ),
    );
  }
}
