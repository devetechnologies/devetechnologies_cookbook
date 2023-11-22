import 'package:flutter/material.dart';

class BodyCustomTapBar extends StatefulWidget {
  const BodyCustomTapBar({super.key});

  @override
  State<BodyCustomTapBar> createState() => _BodyCustomTapBarState();
}

class _BodyCustomTapBarState extends State<BodyCustomTapBar> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      height: size.height,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 15),
            width: size.width,
            height: size.height * 0.25,
            child: Stack(
              children: [
                Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: SizedBox(
                      width: size.width,
                      height: size.height * 0.04,
                      child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                              padding: EdgeInsets.only(
                                  left: index == 0 ? 10 : 23, top: 7));
                        },
                      ),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
