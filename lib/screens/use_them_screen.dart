import 'package:flutter/material.dart';
import 'package:structure_project_demo/core/utils/them.dart';

class UseThemScreen extends StatefulWidget {
  const UseThemScreen({Key? key}) : super(key: key);

  @override
  State<UseThemScreen> createState() => _UseThemScreenState();
}

class _UseThemScreenState extends State<UseThemScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "data",
              style: Theme.of(context).textTheme.headline6,
            ),
            const Icon(Icons.access_alarms_sharp),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Text"),
            ),
            FloatingActionButton(
              onPressed: () {},
              child: const Icon(Icons.add),
              // hoverColor:ThemeData.light(
              //   MyThem.hoverColor
              // ),
            ),
            Text(
              "TextThem",
              style: Theme.of(context).textTheme.headline6,
            ),
            Text(
              "TextThem",
              style: Theme.of(context).textTheme.headline5,
            ),
            const Text(
              "TextThem",
              style: TextStyle(

              ),
            ),
          ],
        ),
      ),
    );
  }
}
