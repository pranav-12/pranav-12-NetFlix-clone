import 'package:flutter/material.dart';

import '../../../core/colors/colors.dart';
import '../../../core/constants.dart';
import '../../home/widgets/custom_button_widgets.dart';
import '../../widgets/video_widget.dart';

class EveryonesWatchingWidgets extends StatelessWidget {
  const EveryonesWatchingWidgets({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kheight,
        const VideoWidget(),
        kheight,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ColumTextButton(
              icon: Icons.send,
              title: 'Share',
              iconsize: 25,
              textize: 16,
            ),
            kwidth,
            ColumTextButton(
              icon: Icons.add,
              title: 'My List',
              iconsize: 25,
              textize: 16,
            ),
            kwidth,
            ColumTextButton(
              icon: Icons.play_arrow,
              title: 'Play',
              iconsize: 25,
              textize: 16,
            ),
            kwidth,
          ],
        ),
        const Text(
          'Tall Girl 2',
          style: TextStyle(
            color: kwhiteColor,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        kheight,
        const Text(
          "Landing the lead in the school musical is a dream come true for jodi, until the pressure sends her confidence--and her relationship--into a tallspin",
          style: TextStyle(
              color: kGreyColor,
              // fontSize: 10,
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
