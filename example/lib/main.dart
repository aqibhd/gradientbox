import 'package:flutter/material.dart';
import 'package:gradientbox/gradientbox.dart';

class DemoApp extends StatelessWidget {
  const DemoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const MaterialApp(
        title: "Example on how to use GradientBox",
        home: DemoScreen(),
      );
}

class DemoScreen extends StatelessWidget {
  const DemoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text(
            "Demo 💯",
            style: TextStyle(color: Colors.black, fontSize: 14),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0.5,
        ),
        body: ListView(
          children: [
            //Gradient Box with random gradient colors.
            GradientBox(
              onTap: () => ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                      content: Text("You forgot to add gradient colors ? 😅"))),
              margin: const EdgeInsets.all(20),
            ),

            // You can provide your desired colors to `GradientColors()`.
            GradientBox(
              margin: const EdgeInsets.all(20),
              gradientColors: GradientColors(const [
                Color(0xFF00B4DB),
                Color(0xFF0083B0),
              ]),
              child: const Text(
                "Created with Dart 🎯",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),

            // You can also use predefined gradient colors that comes with package.
            GradientBox(
              margin: const EdgeInsets.all(20),
              gradientColors: GradientColors.burningOrange,
              child: const Text(
                "Orange Lover 🍊",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),

            // You can modify your Gradient Box however you want.
            GradientBox(
              margin: const EdgeInsets.all(20),
              gradientColors: GradientColors(const [
                Color(0xFFFF3CAC),
                Color(0xFF784BA0),
                Color(0xFF2B86C5),
              ]),
              borderRadius: 100,
              height: 120,
              showShadow: true,
              shadowColor: const Color(0xFFFF3CAC),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "GradientContainer",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Easy to create gradient containers ✌️",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10.0, bottom: 20.0),
              child: Center(
                  child: Text(
                "GradientContainer",
                style: TextStyle(fontSize: 12, color: Colors.black45),
              )),
            )
          ],
        ),
      );
}
