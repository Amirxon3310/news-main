import 'package:flutter/material.dart';
import 'package:news/core/utils/My_image.dart';

class SocialNetworks extends StatelessWidget {
  SocialNetworks({super.key});

  final _image = [
    MyImage.google,
    MyImage.facebook,
    MyImage.what,
    MyImage.apple,
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: List.generate(_image.length, (index) {
        return SizedBox(
          width: 40,
          height: 40,
          child: DecoratedBox(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 2),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Center(child: Image.asset(_image[index], width: 30)),
          ),
        );
      }),
    );
  }
}
