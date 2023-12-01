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
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      margin: const EdgeInsets.all(5),
      child: Column(
        children: [_tabbar(), _body()],
      ),
    );
  }

  Container _body() {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      width: double.infinity,
      height: 550,
      child: PageView.builder(
        itemCount: icons.length,
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icons[current],
                size: 200,
                color: Colors.deepPurpleAccent,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "${items[current]} Tab Content",
              ),
            ],
          );
        },
      ),
    );
  }

  SizedBox _tabbar() {
    return SizedBox(
        width: double.infinity,
        height: 80,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: items.length,
          scrollDirection: Axis.horizontal,
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
                    decoration: BoxDecoration(
                        color:
                            current == index ? Colors.white70 : Colors.white54,
                        borderRadius: current == index
                            ? BorderRadius.circular(12)
                            : BorderRadius.circular(7),
                        border: current == index
                            ? Border.all(
                                color: Colors.deepPurpleAccent, width: 2.5)
                            : null),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            icons[index],
                            size: current == index ? 23 : 20,
                            color: current == index
                                ? Colors.black
                                : Colors.grey.shade400,
                          ),
                          Text(
                            items[index],
                          ),
                          Visibility(
                            visible: current == index,
                            child: Container(
                              width: 5,
                              height: 5,
                              decoration: const BoxDecoration(
                                  color: Colors.deepPurpleAccent,
                                  shape: BoxShape.circle),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            );
          },
        ));
  }
}
