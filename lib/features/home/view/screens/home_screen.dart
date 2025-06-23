import 'package:flutter/material.dart';
import 'package:news/core/extension/sizedbox_extension.dart';
import 'package:news/core/utils/my_image.dart';
import 'package:news/core/widgets/my_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15),
        child: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  Spacer(),
                  Image.asset(MyImage.logo, width: 30),
                  MyText("News 24", size: 18, fontWeight: FontWeight.w600),
                  Spacer(),
                  Icon(Icons.notifications_none_outlined),
                ],
              ),
              20.height,
              SizedBox(
                height: 30,
                width: 400,
                child: ListView.separated(
                  separatorBuilder: (context, index) => SizedBox(
                    width: 10,
                  ),
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (context, index) => FilledButton(
                    style: FilledButton.styleFrom(
                      backgroundColor: Colors.black,
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 5,
                      ),
                      minimumSize: Size(0, 0),
                    ),
                    onPressed: () {},
                    child: Text("For You"),
                  ),
                ),
              ),
              ListView.separated(
                padding: EdgeInsets.only(top: 20),
                separatorBuilder: (context, index) => SizedBox(height: 10),
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return SizedBox(
                    height: 147,
                    width: double.infinity,
                    child: Row(
                      children: [
                        SizedBox(
                          height: double.infinity,
                        )
                      ],
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
