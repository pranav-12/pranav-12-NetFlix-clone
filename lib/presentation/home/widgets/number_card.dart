import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';

import '../../../core/constants.dart';
import '../../search/widget/search_result.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Top 10 TV Shows in India Today',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
        ),
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              10,
              (index) => Stack(
                children: [
                  Row(
                    children: [
                      const SizedBox(
                        width: 30,
                      ),
                      Container(
                        width: 130,
                        decoration: BoxDecoration(
                          borderRadius: kRadius10,
                          image:  DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(kMainImage),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    left: 10,
                    bottom: -26,
                    child: BorderedText(
                      strokeWidth: 5.0,
                      strokeColor: kwhiteColor,
                      child: Text(
                        '${index + 1}',
                        style: const TextStyle(
                            color: kBlackColor,
                            fontSize: 120,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.none,
                            decorationColor: kBlackColor),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        kheight,
      ],
    );
  }
}
