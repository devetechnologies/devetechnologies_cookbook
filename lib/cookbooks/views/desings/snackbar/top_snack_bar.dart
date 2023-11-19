import 'package:devetechnologies_cookbook/cookbooks/views/desings/snackbar/widgets/custom_snackbar.dart';
import 'package:devetechnologies_cookbook/widgets/top_snack_bar.dart';
import 'package:flutter/material.dart';

class TopSnackbar extends StatelessWidget {
  static String routeName = "/top_snackbar";
  const TopSnackbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Top SnackBar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {
                    showTopSnackBar(
                        Overlay.of(context),
                        const CustomSnackBar.info(
                            message: 'You need to do something with that!'));
                  },
                  child: const Text('Show Info!')),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {
                    showTopSnackBar(
                        Overlay.of(context),
                        const CustomSnackBar.success(
                            message:
                                'Good job, your release is successful. Have a nice day!'));
                  },
                  child: const Text('Show Success!')),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {
                    showTopSnackBar(
                        Overlay.of(context),
                        const CustomSnackBar.error(
                            message:
                                'Something went wrong. Please check your credentials and try again!'));
                  },
                  child: const Text('Show Error!')),
            ),
          ],
        ),
      ),
    );
  }
}
