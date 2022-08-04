import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/screens/main/components/area_info_text.dart';
import 'package:portfolio/screens/main/components/coding.dart';
import 'package:portfolio/screens/main/components/knowleges.dart';
import 'package:portfolio/screens/main/components/my_intro.dart';
import 'package:portfolio/screens/main/components/skills.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            const MyIntro(),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    const AreaInfoText(
                      title: "Recidence",
                      text: "India",
                    ),
                    const AreaInfoText(
                      title: "City",
                      text: "Rajkot",
                    ),
                    const AreaInfoText(
                      title: "Age",
                      text: "26",
                    ),
                    const Skills(),
                    const SizedBox(
                      height: defaultPadding,
                    ),
                    const Coding(),
                    const Knowleges(),
                    const Divider(),
                    const SizedBox(
                      height: defaultPadding / 2,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: FittedBox(
                          child: Row(
                            children: [
                              Text(
                                "DOWNLOAD CV",
                                style: TextStyle(
                                    color: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .color),
                              ),
                              const SizedBox(
                                width: defaultPadding / 2,
                              ),
                              SvgPicture.asset("assets/icons/download.svg")
                            ],
                          ),
                        )),
                    Container(
                      margin: const EdgeInsets.only(top: defaultPadding),
                      color: const Color(0xFF24242E),
                      child: Row(children: [
                        const Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset("assets/icons/linkedin.svg"),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset("assets/icons/twitter.svg"),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset("assets/icons/github.svg"),
                        ),
                        const Spacer(),
                      ]),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
