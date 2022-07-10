import 'package:flutter/material.dart';

class MyIntro extends StatelessWidget {
  const MyIntro({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: const Color(0xFF242430),
        child: Column(
          children: [
            const Spacer(
              flex: 2,
            ),
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.amber.shade400,
              // backgroundImage:
              // AssetImage(''),
            ),
            const Spacer(),
            Text(
              'Radhen Soni',
              style: Theme.of(context).textTheme.subtitle2,
            ),
            const Text(
              "Flutter Developer & Passioned Learner",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w200, height: 1.5),
            ),
            const Spacer(
              flex: 2,
            )
          ],
        ),
      ),
    );
  }
}
