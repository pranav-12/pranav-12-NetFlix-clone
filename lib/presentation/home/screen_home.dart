import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/home/widgets/background_card.dart';
import 'package:netflix_clone/presentation/home/widgets/number_card.dart';

import '../widgets/main_title_card.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: scrollNotifier,
        builder: (context, value, child) =>
            NotificationListener<UserScrollNotification>(
          onNotification: (notification) {
            final direction = notification.direction;
            if (direction == ScrollDirection.reverse) {
              scrollNotifier.value = false;
            } else if (direction == ScrollDirection.forward) {
              scrollNotifier.value = true;
            }
            return true;
          },
          child: Stack(children: [
            ListView(
              children: const [
                BackgroundCard(),
                MainTitleCard(title: 'Released in the past year'),
                MainTitleCard(title: 'Trending Now'),
                NumberCard(),
                MainTitleCard(title: 'Tense Dramas'),
                MainTitleCard(title: 'South Indian Cinema'),
              ],
            ),
            scrollNotifier.value == true
                ? AnimatedContainer(
                    duration: const Duration(microseconds: 1000),
                    child: Container(
                      width: double.infinity,
                      height: 90,
                      color: Colors.black.withOpacity(0.35),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Image.asset(
                                  "assets/netflix.png",
                                  fit: BoxFit.cover,
                                  height: 40,
                                  width: 50,
                                ),
                                const Spacer(),
                                const Icon(
                                  Icons.cast,
                                  color: Colors.white,
                                ),
                                kwidth,
                                Container(
                                  width: 20,
                                  height: 20,
                                  color: Colors.blue,
                                ),
                                kwidth
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('TV Shows', style: kHomeTitleText),
                              Text('Movies', style: kHomeTitleText),
                              Text('Categories', style: kHomeTitleText),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                : kheight
          ]),
        ),
      ),
    );
  }
}
