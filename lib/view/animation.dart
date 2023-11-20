import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AnimationScreen extends StatefulWidget {
  const AnimationScreen({Key? key}) : super(key: key);

  @override
  State<AnimationScreen> createState() => _AnimationScreenState();
}

class _AnimationScreenState extends State<AnimationScreen> {
  bool isAnim = false;
  bool isOpacity = false;
  bool isShape = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              AnimatedAlign(
                alignment:
                    isAnim == false ? Alignment.topLeft : Alignment.topRight,
                duration: const Duration(
                  seconds: 2,
                ),
                child: Container(
                  // duration: Duration(seconds: 2),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: isAnim == false ? Colors.pink : Colors.purple,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      isAnim = !isAnim;
                    });
                  },
                  child: const Text("Go")),
              const SizedBox(
                height: 20,
              ),
              AnimatedOpacity(
                opacity: isOpacity == false ? 0 : 1,
                duration: const Duration(
                  seconds: 3,
                ),
                child: Container(
                  // duration: Duration(seconds: 2),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: isOpacity == false ? Colors.pink : Colors.amber,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      isOpacity = !isOpacity;
                    });
                  },
                  child: const Text("Go")),
              const SizedBox(
                height: 20,
              ),
              AnimatedContainer(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  color: isShape == false ? Colors.red : Colors.green,
                  borderRadius: BorderRadius.circular(isShape ? 150 : 30),
                ),
                duration: const Duration(
                  seconds: 1,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      isShape = !isShape;
                    });
                  },
                  child: const Text("Go")),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    if (Platform.isAndroid) {
                      Get.snackbar("Test Message", "this is android device");
                    } else if (Platform.isIOS) {
                      Get.snackbar("Test Message", "this is ios device");
                    }
                  },
                  child: Text("Check")),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Get.toNamed('/third');
                  },
                  child: Text("Permission")),
            ],
          ),
        ),
      ),
    ));
  }
}
