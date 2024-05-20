import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void dispose() {
    super.dispose();
  }

  Future _openSpinWheel() {
    return showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          surfaceTintColor: Colors.transparent,
          backgroundColor: Colors.transparent,
          child: SpinWheelWidget(),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Halo, Sobat",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Color(0xFF4F4A45)),
        ),
        actions: [
          IconButton(
            onPressed: () {
              context.push('/reward');
            },
            icon: const Icon(Icons.card_giftcard),
          ),
          InkWell(
            onTap: () {
              print('Image clicked');
            },
            child: ClipOval(
                child: CachedNetworkImage(
              imageUrl: 'https://placehold.co/600x400.png',
              width: 30,
              height: 30,
              fit: BoxFit.cover,
              errorWidget: (context, url, error) => const Icon(Icons.person),
            )),
          ),
          SizedBox(width: 14),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  _openSpinWheel();
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    color: Color(0xFFED7D31),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.25),
                        spreadRadius: 0,
                        blurRadius: 4,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Daily spin',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        '12:55:30',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  gradient: const LinearGradient(
                    begin: AlignmentDirectional.topCenter,
                    end: AlignmentDirectional.bottomCenter,
                    colors: [Color(0xFFC3522F), Color(0xFF6C5F5B)],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.25),
                      spreadRadius: 0,
                      blurRadius: 4,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 24.0, vertical: 24.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CachedNetworkImage(
                            imageUrl: "https://placehold.co/600x400.png",
                            imageBuilder: (context, imageProvider) => Container(
                              width: 64,
                              height: 64,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                image: DecorationImage(
                                  image: imageProvider,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            placeholder: (context, url) =>
                                CircularProgressIndicator(),
                            errorWidget: (context, url, error) =>
                                Icon(Icons.error),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "MF. Fathin Qusyayyi",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                                Text(
                                  "@faiq_fathin",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.leaderboard,
                                color: Colors.yellow,
                                size: 35,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Rank 1",
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.white)),
                                  Text("Peringkat saya",
                                      style: TextStyle(
                                          fontSize: 8, color: Colors.white)),
                                ],
                              )
                            ],
                          ),
                          Container(
                            height: 35,
                            child: VerticalDivider(
                              color: Colors.white,
                              thickness: 1,
                            ),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.monetization_on,
                                color: Colors.yellow,
                                size: 35,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("1456 poin",
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.white)),
                                  Text("Poin hadiah saya",
                                      style: TextStyle(
                                          fontSize: 8, color: Colors.white)),
                                ],
                              )
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Game",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF34312F)),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: InkWell(
                      onTap: () {
                        context.push('/quiz-category');
                      },
                      child: Container(
                        height: 210,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage("images/quiz.png"),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.25),
                              spreadRadius: 0,
                              blurRadius: 4,
                              offset: const Offset(0, 4),
                            ),
                          ],
                        ),
                        child: Stack(children: [
                          Positioned(
                              top: 20,
                              left: 12,
                              child: Text(
                                "Quiz",
                                style: TextStyle(
                                    fontSize: 32,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              )),
                        ]),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: InkWell(
                      onTap: () {
                        context.push('/caribarang-category');
                      },
                      child: Container(
                        height: 210,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage("images/cari-barang.png"),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.25),
                              spreadRadius: 0,
                              blurRadius: 4,
                              offset: const Offset(0, 4),
                            ),
                          ],
                        ),
                        child: Stack(children: [
                          Positioned(
                              top: 20,
                              left: 12,
                              child: Text(
                                "Cari \nBarang",
                                style: TextStyle(
                                    fontSize: 28,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              )),
                        ]),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SpinWheelWidget extends StatefulWidget {
  const SpinWheelWidget({super.key});

  @override
  State<SpinWheelWidget> createState() => _SpinWheelWidgetState();
}

class _SpinWheelWidgetState extends State<SpinWheelWidget> {
  StreamController<int> selected = StreamController<int>();

  @override
  void dispose() {
    selected.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final items = <int>[100, 200, 100, 300, 100, 100, 200, 100];

    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: MediaQuery.of(context).size.width * 0.9,
            child: FortuneWheel(
              animateFirst: false,
              selected: selected.stream,
              items: [
                for (var i = 0; i < items.length; i++)
                  FortuneItem(
                    child: Text(
                      '${items[i]} point',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Colors.black87),
                    ),
                    style: FortuneItemStyle(
                      borderColor: Colors.orange[900]!,
                      color: i % 2 == 0
                          ? Colors.orange[400]!
                          : Colors.orange[600]!,
                    ),
                  ),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                selected.add(
                  Fortune.randomInt(0, items.length),
                );
              });
            },
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor:
                  const Color(0xFFED7D31), // This is the background color
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(10), // This is the border radius
              ),
            ),
            child: Text("Spin Sekarang"),
          ),
        ],
      ),
    );
  }
}
