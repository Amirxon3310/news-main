import 'package:flutter/material.dart';
import 'package:news/core/utils/my_image.dart';
import 'package:news/core/widgets/my_text.dart';
import 'package:news/features/auth/view/widgets/social_networks.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(35),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 80),
              Center(child: Image.asset(MyImage.logo, width: 100)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyText("News 24", size: 25, fontWeight: FontWeight.w600),
                ],
              ),
              SizedBox(height: 20),

              MyText("Email", size: 16, color: Colors.grey),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(hintText: "email@email.com"),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                    return 'Enter a valid email address';
                  }
                  return null;
                },
              ),

              SizedBox(height: 30),

              MyText("Password", size: 16, color: Colors.grey),
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(hintText: "***********"),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a password';
                  } else if (value.length < 6) {
                    return 'Password must be at least 6 characters';
                  }
                  return null;
                },
              ),

              SizedBox(height: 30),

              MyText("Confirm Password", size: 16, color: Colors.grey),
              TextFormField(
                controller: _confirmPasswordController,
                obscureText: true,
                decoration: InputDecoration(hintText: "***********"),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please confirm your password';
                  } else if (value != _passwordController.text) {
                    return 'Passwords do not match';
                  }
                  return null;
                },
              ),

              SizedBox(height: 40),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 150,
                    height: 40,
                    child: FilledButton(
                      style: FilledButton.styleFrom(
                        backgroundColor: Colors.black,
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {}
                      },
                      child: Text("Sign Up"),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 40),

              Row(
                children: [
                  Expanded(child: Divider(color: Colors.black)),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: MyText("or sign in with", size: 16),
                  ),
                  Expanded(child: Divider(color: Colors.black)),
                ],
              ),

              SizedBox(height: 40),
              SocialNetworks(),
              SizedBox(height: 40),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyText("Already have an account? ", color: Colors.black87),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: MyText("Login", fontWeight: FontWeight.w600),
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
