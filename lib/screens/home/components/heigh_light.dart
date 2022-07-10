import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';

class HeightLight extends StatelessWidget {
  const HeightLight({Key? key, required this.counter, this.lable})
      : super(key: key);

  final Widget counter;
  final String? lable;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        counter,
        const SizedBox(
          width: defaultPadding / 2,
        ),
        Text(
          lable!,
          style: Theme.of(context).textTheme.subtitle2,
        )
      ],
    );
  }
}
