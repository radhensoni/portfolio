import 'package:flutter/material.dart';
import 'package:portfolio/components/animated_lenear_progress_indicator.dart';
import 'package:portfolio/constants.dart';

class Coding extends StatelessWidget {
  const Coding({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding),
            child: Text(
              "Coding",
              style: Theme.of(context).textTheme.subtitle2,
            ),
          ),
          const AnimatedLenearProgressIndicator(
            lable: "Dart",
            percentage: 0.8,
          ),
          const AnimatedLenearProgressIndicator(
            lable: "Html",
            percentage: 0.63,
          ),
          const AnimatedLenearProgressIndicator(
            lable: "Css",
            percentage: 0.70,
          ),
          const AnimatedLenearProgressIndicator(
            lable: "JavaScrippt",
            percentage: 0.8,
          )
        ],
      ),
    );
  }
}
