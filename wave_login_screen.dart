import 'package:flutter/material.dart';

class WaveLoginScreen extends StatelessWidget {
  const WaveLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Wave Background
          Container(
            color: Colors.pinkAccent,
            child: CustomPaint(painter: WavePainter(), child: Container()),
          ),
          // Content
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  SizedBox(height: 50),
                  Text(
                    'Hello Again!',
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 42,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Welcome back you\'ve been missed',
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 80),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(blurRadius: 10, offset: Offset(0, 5)),
                      ],
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'EmailId',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(20),
                        prefixIcon: Icon(Icons.mail, color: Colors.blue),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(blurRadius: 10, offset: Offset(0, 5)),
                      ],
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Password',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(20),
                        prefixIcon: Icon(Icons.lock, color: Colors.blue),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Forgot Password ?',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    width: double.infinity,
                    height: 55,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(20),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Not a member? '),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Register Now',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class WavePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // First Wave
    final paint = Paint()
      ..color = Colors.white.withOpacity(0.2)
      ..style = PaintingStyle.fill;
    final path = Path();
    path.moveTo(0, size.height * 0.7);
    path.quadraticBezierTo(
      size.width * 0.25,
      size.height * 0.6,
      size.width * 0.5,
      size.height * 0.7,
    );
    path.quadraticBezierTo(
      size.width * 0.75,
      size.height * 0.8,
      size.width,
      size.height * 0.7,
    );
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    canvas.drawPath(path, paint);

    // Second Wave
    final paint2 = Paint()
      ..color = Colors.white.withOpacity(0.2)
      ..style = PaintingStyle.fill;
    final path2 = Path();
    path2.moveTo(0, size.height * 0.8);
    path2.quadraticBezierTo(
      size.width * 0.25,
      size.height * 0.7,
      size.width * 0.5,
      size.height * 0.8,
    );
    path2.quadraticBezierTo(
      size.width * 0.75,
      size.height * 0.9,
      size.width,
      size.height * 0.8,
    );
    path2.lineTo(size.width, size.height);
    path2.lineTo(0, size.height);
    path2.close();

    canvas.drawPath(path2, paint2);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
