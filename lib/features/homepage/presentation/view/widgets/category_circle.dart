
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class Catigoriescircle extends StatelessWidget {
  const Catigoriescircle({
    super.key,
    required this.image,
    required this.name,
  });
  final String image;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 72,
          width: 72,
          padding: const EdgeInsets.all(20),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: const Color(0xff292929),
              borderRadius: BorderRadius.circular(50)),
          child: Image.asset(
            image,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          name,
          style: Styles.font14W400,
        )
      ],
    );
  }
}
