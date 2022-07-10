import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';

class AnimatedCircularProgressIndicator extends StatelessWidget {
  const AnimatedCircularProgressIndicator(
      {Key? key, required this.percentage, required this.lable})
      : super(key: key);
  final double percentage;
  final String lable;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: TweenAnimationBuilder(
            tween: Tween<double>(begin: 0, end: percentage),
            duration: defaultDuration,
            builder: (context, double value, child) => Stack(
              fit: StackFit.expand,
              children: [
                CircularProgressIndicator(
                  color: primaryColor,
                  backgroundColor: darkColor,
                  value: value,
                ),
                Center(
                  child: Text(
                    (value * 100).toInt().toString() + "%",
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: defaultPadding / 2,
        ),
        Text(
          lable,
          maxLines: 1,
          style: Theme.of(context).textTheme.subtitle2,
          overflow: TextOverflow.ellipsis,
        )
      ],
    );
  }
}
