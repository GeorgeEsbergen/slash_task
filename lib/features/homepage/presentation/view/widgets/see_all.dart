
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class SeeAllRow extends StatelessWidget {
  const SeeAllRow({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text, style: Styles.font22W600),
        Row(
          children: [
            Text("See All", style: Styles.font14W500),
            const SizedBox(width: 10),
            Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                  color: const Color(0xffE6E6E6).withOpacity(0.8),
                  borderRadius: BorderRadius.circular(5)),
              child: const Icon(
                Icons.arrow_forward_ios_outlined,
                size: 15,
              ),
            ),
          ],
        )
      ],
    );
  }
}
