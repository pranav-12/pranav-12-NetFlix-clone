import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/widgets/video_widget.dart';

import '../../../core/colors/colors.dart';
import '../../../core/constants.dart';
import '../../home/widgets/custom_button_widgets.dart';
import '../../search/widget/search_idle.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: 50,
          height: 450,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text(
                'FEB',
                style: TextStyle(color: kGreyColor, fontSize: 16),
              ),
              Text(
                '11',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ],
          ),
        ),
        SizedBox(
          width: size.width - 50,
          height: 450,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const VideoWidget(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Tall Girl 2',
                    style: TextStyle(
                      letterSpacing: -5,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      ColumTextButton(
                        icon: CupertinoIcons.bell,
                        title: "Remind me",
                        iconsize: 20,
                        textize: 12,
                      ),
                      kwidth,
                      ColumTextButton(
                        icon: CupertinoIcons.info,
                        title: "Info",
                        iconsize: 20,
                        textize: 12,
                      ),
                      kwidth,
                    ],
                  ),
                ],
              ),
              const Text('Coming on Friday'),
              kheight,
              const Text(
                'Tall Girl 2',
                style: TextStyle(
                  color: kwhiteColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w900,
                ),
              ),
              kheight,
              const Text(
                "Landing the lead in the school musical is a dream come true for jodi, until the pressure sends her confidence--and her relationship--into a tallspin",
                style: TextStyle(
                    color: kGreyColor,
                    // fontSize: 10,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ],
    );
  }
}
