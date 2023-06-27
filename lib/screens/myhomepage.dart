import 'package:facebook_clone_ui/screens/home.dart';
import 'package:facebook_clone_ui/screens/friends.dart';
import 'package:facebook_clone_ui/screens/watch.dart';
import 'package:facebook_clone_ui/style/style.dart';
import 'package:facebook_clone_ui/widgets/buttons/circle_button.dart';
import 'package:facebook_clone_ui/widgets/buttons/tabs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final screens = [
    const Home(),
    const Friends(),
    const Watch(),
    const Scaffold(),
    const Scaffold(),
    const Scaffold(),
  ];
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.grey[400],
          appBar: AppBar(
            toolbarHeight: currentindex == 0 ? 60 : 0,
            title: currentindex == 0
                ? const Text(
                    'facebook',
                    style: TextStyle(
                        color: Style.fontColor,
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: -1.2),
                  )
                : Container(),
            actions: currentindex == 0
                ? [
                    CircleButton(
                      icon: Icons.add,
                      onPressed: () {
                        debugPrint('Add');
                      },
                    ),
                    CircleButton(
                      icon: Icons.search,
                      onPressed: () {
                        debugPrint('Search');
                      },
                    ),
                    CircleButton(
                      icon: MdiIcons.facebookMessenger,
                      onPressed: () {
                        debugPrint('Messenger');
                      },
                    ),
                  ]
                : [],
            backgroundColor: Colors.white,
            elevation: 0.5,
            bottom: TabBar(
              onTap: (index) => setState(() => currentindex = index),
              indicatorColor: Colors.blue,
              tabs: <CustomTabs>[
                CustomTabs(
                  icon: currentindex == 0
                      ? Icons.home_filled
                      : Icons.home_outlined,
                  size: 30,
                  color: currentindex == 0 ? Colors.blue : Colors.grey,
                ),
                CustomTabs(
                  icon: currentindex == 1
                      ? Icons.people_alt
                      : Icons.people_outline,
                  size: 30,
                  color: currentindex == 1 ? Colors.blue : Colors.grey,
                ),
                CustomTabs(
                  icon: currentindex == 2
                      ? CupertinoIcons.tv_fill
                      : CupertinoIcons.tv,
                  size: 30,
                  color: currentindex == 2 ? Colors.blue : Colors.grey,
                ),
                CustomTabs(
                  icon: currentindex == 3
                      ? Icons.storefront_rounded
                      : Icons.storefront,
                  size: 30,
                  color: currentindex == 3 ? Colors.blue : Colors.grey,
                ),
                CustomTabs(
                  icon:
                      currentindex == 4 ? MdiIcons.bell : MdiIcons.bellOutline,
                  size: 30,
                  color: currentindex == 4 ? Colors.blue : Colors.grey,
                ),
                CustomTabs(
                  icon: Icons.menu,
                  size: 30,
                  color: currentindex == 5 ? Colors.blue : Colors.grey,
                ),
              ],
            ),
          ),
          body: SafeArea(
            child: IndexedStack(
              index: currentindex,
              children: screens,
            ),
          ),
        ),
      ),
    );
  }
}
