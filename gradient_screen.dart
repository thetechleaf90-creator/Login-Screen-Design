import 'package:flutter/material.dart';

class GradientScreen extends StatefulWidget {
  const GradientScreen({super.key});

  @override
  State<GradientScreen> createState() => _GradientScreenState();
}

class _GradientScreenState extends State<GradientScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16),
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              const Color.fromARGB(255, 255, 115, 0),
              Colors.yellowAccent,
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo Section
              Container(
                width: 140,
                height: 140,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 20,
                      offset: Offset(0, 5),
                      color: const Color.fromARGB(255, 238, 226, 226),
                    ),
                  ],
                ),
                child: CircleAvatar(
                  child: Image.asset("assets/images/image.png"),
                ),
              ),
              SizedBox(height: 40),
              // Title Section
              Text(
                "Welcome Back",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepOrange,
                ),
              ),
              SizedBox(height: 20),
              // Email ID TextField Section
              Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 10,
                      offset: Offset(0, 3),
                      color: Colors.black54.withOpacity(0.5),
                    ),
                  ],
                ),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Email ID",
                    labelStyle: TextStyle(
                      color: Colors.deepOrange,
                      fontSize: 18,
                    ),
                    prefixIcon: Icon(
                      Icons.email_outlined,
                      color: Colors.deepOrange,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(height: 20),
              // Password TextField Section
              Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 10,
                      offset: Offset(0, 3),
                      color: Colors.black54.withOpacity(0.5),
                    ),
                  ],
                ),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Password",
                    labelStyle: TextStyle(
                      color: Colors.deepOrange,
                      fontSize: 18,
                    ),
                    prefixIcon: Icon(
                      Icons.lock_outlined,
                      color: Colors.deepOrange,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              // Forgot Password TextButton Scetion
              Align(
                alignment: Alignment.bottomRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "forgot password?",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
              // Login Elevation Button Section
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 120),
                  backgroundColor: Colors.black87,
                ),
                child: Text(
                  "LOGIN",
                  style: TextStyle(
                    fontSize: 24,
                    letterSpacing: 1.5,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 20),
              // or Login With Divider Section
              Row(
                children: [
                  Expanded(child: Divider(color: Colors.grey)),
                  SizedBox(width: 20),
                  Text(
                    "or login with",
                    style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(child: Divider(color: Colors.grey)),
                ],
              ),
              SizedBox(height: 20),
              // Social Button Section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          offset: Offset(0, 5),
                          color: Colors.black54.withOpacity(0.5),
                        ),
                      ],
                    ),
                    child: Icon(
                      Icons.facebook,
                      color: Colors.lightBlueAccent,
                      size: 40,
                    ),
                  ),
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          offset: Offset(0, 5),
                          color: Colors.black54.withOpacity(0.5),
                        ),
                      ],
                    ),
                    padding: EdgeInsets.all(18),
                    child: Image.asset("assets/images/google_logo.png"),
                  ),
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          offset: Offset(0, 5),
                          color: Colors.black54.withOpacity(0.5),
                        ),
                      ],
                    ),
                    child: Icon(Icons.apple, color: Colors.black, size: 40),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
