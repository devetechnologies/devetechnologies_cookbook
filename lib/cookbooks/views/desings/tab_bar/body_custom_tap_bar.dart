import 'package:flutter/material.dart';

class BodyCustomTapBar extends StatefulWidget {
  const BodyCustomTapBar({super.key});

  @override
  State<BodyCustomTapBar> createState() => _BodyCustomTapBarState();
}

class _BodyCustomTapBarState extends State<BodyCustomTapBar> {
  List<String> items = [
    "Home",
    "Explore",
    "Search",
    "Feed",
    "Posts",
    "Activity",
    "Setting",
    "Profile",
  ];

  /// List of body icon
  List<IconData> icons = [
    Icons.home,
    Icons.explore,
    Icons.search,
    Icons.feed,
    Icons.post_add,
    Icons.local_activity,
    Icons.settings,
    Icons.person
  ];
  int current = 0;
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    //var size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: double.infinity,
      margin: const EdgeInsets.all(5),
      child: Column(
        children: [
          SizedBox(
              width: double.infinity,
              height: 80,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            current = index;
                          });
                          pageController.animateToPage(current,
                              duration: const Duration(microseconds: 200),
                              curve: Curves.ease);
                        },
                        child: AnimatedContainer(
                          duration: const Duration(microseconds: 300),
                          margin: const EdgeInsets.all(5),
                          width: 100,
                          height: 55,
                        ),
                      )
                    ],
                  );
                },
              ))
        ],
      ),
    );
  }
}
