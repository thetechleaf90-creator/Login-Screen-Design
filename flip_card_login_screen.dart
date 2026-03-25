import 'package:flutter/material.dart';

class FlipCardLoginScreen extends StatefulWidget {
  const FlipCardLoginScreen({super.key});

  @override
  State<FlipCardLoginScreen> createState() => _FlipCardLoginScreenState();
}

class _FlipCardLoginScreenState extends State<FlipCardLoginScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  bool _isFront = true;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 800),
    );
    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);
  }

  void _flipCard() {
    if (_isFront) {
      _controller.forward();
    } else {
      _controller.reverse();
    }
    _isFront = !_isFront;
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blue, Colors.purple],
          ),
        ),
        child: Center(
          child: GestureDetector(
            onTap: _flipCard,
            child: Container(
              width: 350,
              height: 550,
              child: AnimatedBuilder(
                animation: _controller,
                builder: (context, child) {
                  final isFront = _controller.value < 0.5;
                  return Transform(
                    transform: Matrix4.identity()
                      ..setEntry(3, 2, 0.001)
                      ..rotateY(_controller.value * 3.14159),
                    alignment: Alignment.center,
                    child: isFront ? _builderFrontCard() : _builderBackCard(),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _builderFrontCard() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.3))],
      ),
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Icon(Icons.lock_outline, size: 80, color: Colors.blue),
            SizedBox(height: 30),
            Text(
              'Login',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            TextField(
              decoration: InputDecoration(
                hintText: 'EmailID',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                prefixIcon: Icon(Icons.email),
              ),
            ),
            SizedBox(height: 15),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                prefixIcon: Icon(Icons.lock),
              ),
            ),
            SizedBox(height: 15),
            SizedBox(
              width: 240,
              height: 45,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF86A8E3),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Tap to flip',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _builderBackCard() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.3))],
      ),
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Icon(Icons.person_add, size: 80, color: Colors.blue),
            SizedBox(height: 30),
            Text(
              'Sign Up',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            TextField(
              decoration: InputDecoration(
                hintText: 'Name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                prefixIcon: Icon(Icons.person),
              ),
            ),
            SizedBox(height: 15),
            TextField(
              decoration: InputDecoration(
                hintText: 'EmailID',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                prefixIcon: Icon(Icons.email),
              ),
            ),
            SizedBox(height: 15),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                prefixIcon: Icon(Icons.lock),
              ),
            ),
            SizedBox(height: 15),
            SizedBox(
              width: 180,
              height: 45,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF86A8E3),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Tap to flip',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
