import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class AppBarRow extends StatelessWidget {
  const AppBarRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Slash.", style: Styles.font20W700),
        Row(children: [
          Image.asset(
            "assets/icons/location.png",
            height: 24,
            width: 20,
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Naser City",
                style: Styles.font14W400,
              ),
              Text("Cairo", style: Styles.font14W700),
            ],
          ),
          const SizedBox(width: 5),
          const Icon(
            Icons.keyboard_arrow_down_outlined,
            size: 24,
          )
        ]),
        SizedBox(
          height: 30,
          width: 30,
          child: Stack(
            children: [
              Image.asset(
                "assets/icons/notification.png",
                height: 35,
                fit: BoxFit.cover,
                width: 25,
              ),
              Positioned(
                right: 3,
                top: 3,
                child: Container(
                  height: 12,
                  width: 12,
                  decoration: BoxDecoration(
                      color: const Color(0xffC12222),
                      borderRadius: BorderRadius.circular(20)),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
