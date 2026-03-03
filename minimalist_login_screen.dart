import 'dart:ffi';

import 'package:flutter/material.dart';

class MinimalistLoginScreen extends StatelessWidget {
  const MinimalistLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo
              SizedBox(
                height: 140,
                width: 140,
                child: CircleAvatar(
                  child: Icon(Icons.person, size: 80, color: Colors.black),
                ),
              ),
              // Title
              SizedBox(
                child: Text(
                  "Sign In",
                  style: TextStyle(
                    fontSize: 48,
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              // Subtitle
              SizedBox(height: 8),
              SizedBox(
                child: Text(
                  "Please Sign In to Continue",
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),
              ),
              // Email ID
              SizedBox(
                width: double.infinity,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Email ID",
                    labelStyle: TextStyle(color: Colors.grey),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 8),
              // Password
              SizedBox(
                width: double.infinity,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Password",
                    labelStyle: TextStyle(color: Colors.grey),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 18),
              // Login Button
              Container(
                height: 60,
                width: double.infinity,
                child: TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.black),
                  onPressed: () {},
                  child: Text(
                    "LOGIN",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      letterSpacing: 1.5,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 8),
              // Forgot Password
              Align(
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "forget password?",
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
