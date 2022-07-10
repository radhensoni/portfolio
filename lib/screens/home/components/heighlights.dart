import 'package:flutter/material.dart';
import 'package:portfolio/components/animated_counter.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/screens/home/components/heigh_light.dart';

class HeighlightInfo extends StatelessWidget {
  const HeighlightInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Responsive.isMobileLarge(context)
          ? Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    HeightLight(
                      counter: AnimatedCounter(
                        value: 110,
                        text: "K+",
                      ),
                      lable: "Subscribers",
                    ),
                    HeightLight(
                      counter: AnimatedCounter(
                        value: 40,
                        text: "+",
                      ),
                      lable: "Videos",
                    ),
                  ],
                ),
                SizedBox(
                  height: defaultPadding,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    HeightLight(
                      counter: AnimatedCounter(
                        value: 2,
                        text: "+",
                      ),
                      lable: "Github Projects",
                    ),
                    HeightLight(
                      counter: AnimatedCounter(
                        value: 200,
                        text: "K+",
                      ),
                      lable: "Stars",
                    ),
                  ],
                )
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                HeightLight(
                  counter: AnimatedCounter(
                    value: 110,
                    text: "K+",
                  ),
                  lable: "Subscribers",
                ),
                HeightLight(
                  counter: AnimatedCounter(
                    value: 40,
                    text: "+",
                  ),
                  lable: "Videos",
                ),
                HeightLight(
                  counter: AnimatedCounter(
                    value: 2,
                    text: "+",
                  ),
                  lable: "Github Projects",
                ),
                HeightLight(
                  counter: AnimatedCounter(
                    value: 200,
                    text: "K+",
                  ),
                  lable: "Stars",
                ),
              ],
            ),
    );
  }
}
