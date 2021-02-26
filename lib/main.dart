import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  RxInt count = 0.obs; // reactive variable
  increment() => count++; // logic for FlotingAction button

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Counter App using GetX"),
        ),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add), onPressed: () => increment()),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("you have clicked floting action button times:"),
              Obx(
                () => Text(
                  "$count",
                  style: TextStyle(fontSize: 30),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
