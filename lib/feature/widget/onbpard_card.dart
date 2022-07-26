import 'package:flutter/material.dart';
import 'package:state_managment/feature/onBoard/onboard_model.dart';

class OnBoardCard extends StatelessWidget {
  const OnBoardCard({Key? key, required this.model}) : super(key: key);
  final OnBoardModel model;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          model.title,
          style: Theme.of(context).textTheme.headline4,
        ),
        Text(
          model.subTitle,
          style: Theme.of(context).textTheme.subtitle1,
        ),
        Image.asset(model.imgPath)
      ],
    );
  }
}
