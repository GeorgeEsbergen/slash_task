import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/textAfields.dart';

class SearchlAndFilterRow extends StatelessWidget {
  const SearchlAndFilterRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Expanded(
          child: SizedBox(
            height: 47,
            child: SearchTextField(),
          ),
        ),
        const SizedBox(width: 10),
        Container(
          padding: const EdgeInsets.all(13),
          width: 47,
          height: 45,
          decoration: BoxDecoration(
              color:  Styles.greyColor,
              borderRadius: BorderRadius.circular(10)),
          child: Image.asset(
            "assets/icons/controls.png",
            width: 17,
            height: 17,
          ),
        )
      ],
    );
  }
}
