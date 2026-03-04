import 'package:flutter/material.dart';

class MaterialYouLoginScreen extends StatelessWidget {
  const MaterialYouLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colorscheme = Theme.of(context).colorScheme;

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              colorscheme.primaryContainer,
              colorscheme.secondaryContainer,
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo
              Container(
                width: 140,
                height: 140,
                decoration: BoxDecoration(
                  color: colorscheme.primary,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.person,
                  size: 80,
                  color: colorscheme.onPrimary,
                ),
              ),
              SizedBox(height: 20),
              // Welcome
              Text(
                "Welcome Back",
                style: TextStyle(fontSize: 40, color: colorscheme.onSurface),
              ),
              SizedBox(height: 8),
              Text(
                "Sign In to Continue",
                style: TextStyle(
                  fontSize: 18,
                  color: colorscheme.onSurfaceVariant,
                ),
              ),
              SizedBox(height: 20),
              // Email ID
              Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                color: colorscheme.surfaceVariant,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Email",
                      hintStyle: TextStyle(color: colorscheme.onSurface),
                      border: InputBorder.none,
                      icon: Icon(
                        Icons.email_outlined,
                        color: colorscheme.primary,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              // Password
              Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                color: colorscheme.surfaceVariant,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Password",
                      hintStyle: TextStyle(color: colorscheme.onSurface),
                      border: InputBorder.none,
                      icon: Icon(
                        Icons.lock_outline,
                        color: colorscheme.primary,
                      ),
                      suffixIcon: Icon(
                        Icons.visibility_off_outlined,
                        color: colorscheme.primary,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 8),
              //Forgot Password
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: colorscheme.primary,
                  ),
                  onPressed: () {},
                  child: Text(
                    "forgot password?",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              SizedBox(height: 8),
              // Login Button
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Login", style: TextStyle(fontSize: 20)),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: colorscheme.onPrimary,
                    backgroundColor: colorscheme.primary,
                  ),
                ),
              ),
              SizedBox(height: 20),
              // Divider
              Row(
                children: [
                  Expanded(child: Divider(color: colorscheme.onSurfaceVariant)),
                  SizedBox(width: 20),
                  Text(
                    "OR",
                    style: TextStyle(color: colorscheme.onSurfaceVariant),
                  ),
                  SizedBox(width: 20),
                  Expanded(child: Divider(color: colorscheme.onSurfaceVariant)),
                ],
              ),
              SizedBox(height: 20),
              // Social Button
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: colorscheme.surfaceVariant,
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.facebook,
                        size: 40,
                        color: colorscheme.onSurfaceVariant,
                      ),
                    ),
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: colorscheme.surfaceVariant,
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.g_mobiledata,
                        size: 40,
                        color: colorscheme.onSurfaceVariant,
                      ),
                    ),
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: colorscheme.surfaceVariant,
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.apple,
                        size: 40,
                        color: colorscheme.onSurfaceVariant,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              // Sign Up Button
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Didn't have account",
                    style: TextStyle(fontSize: 18, color: colorscheme.primary),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Sing Up",
                      style: TextStyle(
                        fontSize: 18,
                        color: colorscheme.primary,
                      ),
                    ),
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
