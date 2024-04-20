import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      items: const <Widget>[
        Icon(
          Icons.home,
          size: 30,
          color: Colors.white,
        ),
        Icon(
          Icons.leaderboard_rounded,
          size: 30,
          color: Colors.white,
        ),
        Icon(
          Icons.fit_screen_sharp,
          size: 30,
          color: Colors.white,
        ),
        Icon(
          Icons.person,
          size: 30,
          color: Colors.white,
        ),
      ],
      color: const Color(0xFF4F4A45),
      backgroundColor: Colors.transparent,
      buttonBackgroundColor: const Color(0xFFED7D31),
      animationDuration: const Duration(milliseconds: 350),
      onTap: (value) {
        switch (value) {
          case 0:
            GoRouter.of(context).go('/');
            break;
          case 1:
            GoRouter.of(context).go('/leaderboard');
            break;
          case 2:
            GoRouter.of(context).go('/scan');
            break;
          case 3:
            GoRouter.of(context).go('/profile');
            break;
        }
      },
    );
  }
}
