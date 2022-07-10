import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/constants.dart';

class KnowledgeText extends StatelessWidget {
  const KnowledgeText({Key? key, required this.lable}) : super(key: key);

  final String lable;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset("assets/icons/check.svg"),
        SizedBox(
          width: defaultPadding / 2,
        ),
        Text(lable)
      ],
    );
  }
}
