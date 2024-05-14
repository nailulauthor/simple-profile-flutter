import 'package:flutter/material.dart';
import 'package:profile/colors.dart';
import 'package:profile/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // Deklarasi controller email dan password
  TextEditingController _email = TextEditingController(text: "blablabla@yahoo.com");
  TextEditingController _password = TextEditingController(text: "************");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      body: getBody(),
    );
  }

  Widget getBody() {
    return SafeArea(
        child: Center(
      child: Column(children: [
        SizedBox(height: 80),
        Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
              // memberikan efek agar gambar bundar
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage("assets/images/profile.jpg"),
                fit: BoxFit.cover,
              )),
        ),
        SizedBox(height: 50),
        Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
            color: white,
            borderRadius: BorderRadius.circular(25),
            boxShadow: [
              BoxShadow(
                  color: grey.withOpacity(0.03),
                  spreadRadius: 10,
                  blurRadius: 10),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.only(left: 20, top: 15, right: 20, bottom: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Email Address",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 13,
                    color: Color(0xff67727d),
                  ),
                ),
                TextField(
                  controller: _email,
                  cursorColor: black,
                  style: TextStyle(
                      fontSize: 17, fontWeight: FontWeight.w500, color: black),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.email_outlined),
                    prefixIconColor: black,
                    hintText: "Insert Email",
                  ),
                )
              ],
            ),
          ),
        ),
        SizedBox(height: 20),
        Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
            color: white,
            borderRadius: BorderRadius.circular(25),
            boxShadow: [
              BoxShadow(
                  color: grey.withOpacity(0.03),
                  spreadRadius: 10,
                  blurRadius: 10),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.only(left: 20, top: 15, right: 20, bottom: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Password",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 13,
                    color: Color(0xff67727d),
                  ),
                ),
                TextField(
                  obscureText: true,
                  controller: _password,
                  cursorColor: black,
                  style: TextStyle(
                      fontSize: 17, 
                      fontWeight: FontWeight.w500, 
                      color: black
                      ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.lock_outline_rounded),
                    prefixIconColor: black,
                    suffixIcon: Icon(Icons.remove_red_eye_outlined),
                    suffixIconColor: Colors.black,
                    hintText: "Insert Password",
                  ),
                )
              ],
            ),
          ),
        ),
        SizedBox(height: 80),
        GestureDetector(
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => HomeScreen(),
              ),
            );
          },
          child: Container(
            padding: EdgeInsets.all(16),
            margin: EdgeInsets.symmetric(horizontal: 25),
            decoration: BoxDecoration(
              color: buttonColor,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Center(
              child: Text(
                "Login",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1,
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Signup",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.w300,
                ),
              ),
              Text(
                "Forgot Password",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
        ),
      ]),
    ));
  }
}
