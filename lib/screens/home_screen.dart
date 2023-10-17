import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:self_care/utils/constants.dart';
import 'package:self_care/widgets/feeling_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //int _slelectedIndex = 0;

  @override
  Widget build(BuildContext context) {
   // var hight = MediaQuery.of(context).size.height;
    List<String> selfCareItems = ['Practice', 'Movies', 'Books', 'Learning'];
    List<String> practiceItems = [
      'Meditation',
      'Wake Up',
      'Positive Focus',
      'Deep Breathing',
      'Sleep',
      'Creativity'
    ];
    List<String> practiceEmoji = [
      '🧘',
      '🛏️',
      '😮‍💨',
      '👁️',
      '🎨',
    ];
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Stack(children: [
          Column(children: [
            Expanded(
              flex: 1,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    const SizedBox(height: 30),
                    Row(
                      children: [
                        Container(
                          decoration: ShapeDecoration(
                              shape: ContinuousRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              color: Constants.grey),
                          padding: const EdgeInsets.all(20),
                          child: const Icon(Icons.person),
                        ),
                        const SizedBox(width: 10),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Mahir Mokhtar',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                              ),
                            ),
                            SizedBox(height: 3),
                            Text('Patient',
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 13)),
                          ],
                        ),
                        const Spacer(),
                        Container(
                          decoration: ShapeDecoration(
                            shape: ContinuousRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            color: Constants.grey,
                          ),
                          padding: const EdgeInsets.all(10),
                          child: badges.Badge(
                            position: badges.BadgePosition.topEnd(
                              top: 0,
                              end: 2,
                            ),
                            badgeStyle: badges.BadgeStyle(
                              badgeColor: Constants.green,
                              borderSide: const BorderSide(
                                color: Colors.white,
                                width: 1.5,
                              ),
                            ),
                            child: const Icon(Iconsax.notification5,
                                color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    const Row(
                      children: [
                        Text(
                          'How do you feel today?',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        FeelingWidget(emoji: '😮', title: 'angry'),
                        FeelingWidget(emoji: '😞', title: 'Sad'),
                        FeelingWidget(emoji: '😑', title: 'Neutral'),
                        FeelingWidget(emoji: '🥳', title: 'Happy'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                  color: Constants.blackGreen,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 30),

                      const Text('Next appointments',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          )),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: Colors.grey.shade600.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Column(
                              children: [
                                Text(
                                  '28',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text('April',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 11,
                                    )),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                color: Colors.grey.shade600.withOpacity(0.4),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        '14:30',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      Text('Mahir Mokhtar',
                                          style: TextStyle(
                                            color: Colors.grey.shade400,
                                          ))
                                    ],
                                  ),
                                  const Icon(Icons.more_horiz_outlined,
                                      color: Colors.white)
                                ],
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ])
        ])));
  }
}
