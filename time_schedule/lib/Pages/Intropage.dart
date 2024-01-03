import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: Adaptive.w(80),
              height: Adaptive.h(50),
              child: Card(
                  color: Colors.grey[300],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          'assets/images/namaste.png',
                          width: 100,
                          height: 100,
                        ),
                        Text('Welcome',
                            style: Theme.of(context).textTheme.displayLarge),
                        Text('To',
                            style: Theme.of(context).textTheme.titleLarge),
                        Text('My App name',
                            style: Theme.of(context).textTheme.bodyMedium),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            border: Border.all(
                              color: Colors.black,
                              width: 2,
                            ),
                          ),
                          child: IconButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/home');
                            },
                            icon: const Icon(
                              Icons.arrow_forward,
                              weight: 2.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
