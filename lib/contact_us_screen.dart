import 'package:flutter/material.dart';
import 'package:icon_badge/icon_badge.dart';
import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart'; // Import package url_launcher

class ContactUsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Us'),
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
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ContactForm(),
          ],
        ),
      ),
    );
  }
}

class ContactForm extends StatefulWidget {
  @override
  _ContactFormState createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final TextEditingController _nameController = TextEditingController(text: "Azizi Shafa Ashadel");
  final TextEditingController _emailController = TextEditingController(text: "aziziShafa@gmail.com");
  final TextEditingController _messageController = TextEditingController(text: "Terus lah maju untuk membuat produk-produk baru");

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Kritik dan Saran',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 16),
        TextFormField(
          controller: _nameController,
          decoration: InputDecoration(
            labelText: 'Nama',
            border: OutlineInputBorder(),
            hintText: "Insert Name",
            prefixIcon: Icon(Icons.person),
            prefixIconColor: Colors.black,
          ),
        ),
        SizedBox(height: 16),
        TextFormField(
          controller: _emailController,
          decoration: InputDecoration(
            labelText: 'Email',
            hintText: "Insert Email",
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.email),
            prefixIconColor: Colors.black,
          ),
        ),
        SizedBox(height: 16),
        TextFormField(
          controller: _messageController,
          maxLines: 5,
          decoration: InputDecoration(
            labelText: 'Kritik dan Saran',
            hintText: "Insert Criticism and Suggestions",
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.message),
            prefixIconColor: Colors.black,
          ),
        ),
        SizedBox(height: 16),
        ElevatedButton(
          onPressed: () {
            // Handle form submission
          },
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white, backgroundColor: Colors.blue,
          ),
          child: Text('Kirim'),
        ),
        SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SocialMediaIcon(
              icon: Icons.add_location,
              onPressed: () {
                // Handle Facebook icon click
                launch('https://www.facebook.com/your_facebook_username/');
              },
            ),
            SocialMediaIcon(
              icon: Icons.wechat,
              onPressed: () {
                // Handle WhatsApp icon click
                launch('https://wa.me/087882551454');
              },
            ),
          ],
        ),
      ],
    );
  }
}

class SocialMediaIcon extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  SocialMediaIcon({required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Icon(
        icon,
        size: 40,
        color: Colors.blue,
      ),
    );
  }
}
