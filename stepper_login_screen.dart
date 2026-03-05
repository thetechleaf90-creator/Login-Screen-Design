import 'package:flutter/material.dart';

class StepperLoginScreen extends StatefulWidget {
  const StepperLoginScreen({super.key});

  @override
  State<StepperLoginScreen> createState() => _StepperLoginScreenState();
}

class _StepperLoginScreenState extends State<StepperLoginScreen> {
  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stepper Login Screen Design"),
        backgroundColor: Colors.blue.shade400,
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blue.shade300, Colors.white],
          ),
        ),
        child: Container(
          padding: EdgeInsets.only(top: 80),
          child: Column(
            children: [
              Container(
                height: 140,
                width: 140,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue.shade500,
                ),
                child: Icon(Icons.lock, size: 60, color: Colors.blue.shade700),
              ),
              SizedBox(height: 40),
              Text(
                "Welcome Back",
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.blue.shade600,
                  fontWeight: FontWeight.w500,
                ),
              ),

              SizedBox(height: 60),
              Stepper(
                currentStep: _currentStep,
                onStepContinue: () {
                  if (_currentStep < 2) {
                    setState(() {
                      _currentStep += 1;
                    });
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Login Successfull!')),
                    );
                  }
                },
                onStepCancel: () {
                  if (_currentStep > 0) {
                    setState(() {
                      _currentStep -= 1;
                    });
                  }
                },
                controlsBuilder: (context, details) => Row(
                  children: [
                    SizedBox(height: 20),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue.shade700,
                      ),
                      onPressed: details.onStepContinue,
                      child: Text(
                        "Continue",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(width: 10),
                    TextButton(
                      onPressed: details.onStepCancel,
                      child: Text("Cancel"),
                    ),
                  ],
                ),
                steps: [
                  Step(
                    stepStyle: StepStyle(color: Colors.blue.shade800),
                    title: Text('Email ID'),
                    content: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Enter Email ID',
                            prefixIcon: Icon(Icons.mail),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ],
                    ),
                    isActive: _currentStep >= 0,
                  ),
                  Step(
                    stepStyle: StepStyle(color: Colors.blue.shade800),
                    title: Text('Password'),
                    content: Column(
                      children: [
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: 'Enter Password',
                            prefixIcon: Icon(Icons.lock),
                            suffixIcon: Icon(Icons.visibility_off),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ],
                    ),
                    isActive: _currentStep >= 1,
                  ),
                  Step(
                    stepStyle: StepStyle(color: Colors.blue.shade800),
                    title: Text('Verification'),
                    content: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Enter Phone Number',
                            prefixIcon: Icon(Icons.phone),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        Text("Verification Code is sent ot this phone number"),
                      ],
                    ),
                    isActive: _currentStep >= 2,
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
