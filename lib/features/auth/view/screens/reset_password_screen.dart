import 'package:flutter/material.dart';
import 'package:news/core/utils/my_image.dart';
import 'package:news/core/widgets/my_text.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(35),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 100),
              Center(child: Image.asset(MyImage.logo, width: 100)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyText("News 24", size: 25, fontWeight: FontWeight.w600),
                ],
              ),
              SizedBox(height: 20),
              MyText(
                "Enter your email to be sent a reset password link.",
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: 20),
              SizedBox(height: 30),

              MyText("Email", size: 16, color: Colors.grey),
              TextFormField(
                decoration: InputDecoration(hintText: "email@email.com"),
              ),

              SizedBox(height: 50),
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
                      onPressed: () {},
                      child: Text("Reset"),
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
