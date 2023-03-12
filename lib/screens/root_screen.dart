import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:go_router/go_router.dart';
import 'package:retefagioli_market/config/app_router.dart';

class RootScreen extends StatefulWidget {
  final Widget child;
  const RootScreen({Key? key, required this.child}) : super(key: key);

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  final elementBar = <IconData>[
    Icons.home,
    Icons.search,
    Icons.heart_broken,
    Icons.account_box
  ];

  
  @override
  void initState() {
    super.initState();
    initialize();
  }

  void initialize() async {
    await Future.delayed(const Duration(milliseconds: 40));
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    var currentIndex = shellRoutesNames.indexOf(GoRouter.of(context).location);
    return Scaffold(
      body: widget.child,
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.shopping_cart), onPressed: () {}),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: elementBar,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.defaultEdge,
        activeIndex: currentIndex,
        onTap: (index) => context.go(shellRoutesNames[index]),
      ),
    );
  }
}
