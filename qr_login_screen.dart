import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QRLoginScreen extends StatelessWidget {
  const QRLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.black, Colors.blueGrey.shade900],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Scan to Login',
              style: TextStyle(
                fontSize: 32,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Use the mobile app to scan this QR code',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 30,
                    spreadRadius: 5,
                    color: Colors.black.withOpacity(0.3),
                  ),
                ],
              ),
              child: QrImageView(
                data: 'login_session_${DateTime.now().millisecondsSinceEpoch}',
                version: QrVersions.auto,
                size: 250,
                backgroundColor: Colors.white,
              ),
            ),
            SizedBox(height: 30),
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.1),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.timer, color: Colors.white70),
                  SizedBox(width: 10),
                  Text(
                    'Code expires in 5:00',
                    style: TextStyle(color: Colors.white70, fontSize: 16),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Text('Or login with', style: TextStyle(color: Colors.white70)),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildQRLoginOption(icon: Icons.mail, label: 'Email'),
                SizedBox(width: 20),
                _buildQRLoginOption(icon: Icons.phone, label: 'Phone'),
                SizedBox(width: 20),
                _buildQRLoginOption(
                  icon: Icons.fingerprint,
                  label: 'Biometric',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildQRLoginOption({required IconData icon, required label}) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.black.withOpacity(0.7),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Icon(icon, color: Colors.white),
          ),
        ),
        SizedBox(height: 5),
        Text(label, style: TextStyle(color: Colors.white70)),
      ],
    );
  }
}
