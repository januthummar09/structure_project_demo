import 'package:flutter/material.dart';
import 'package:structure_project_demo/core/utils/global.dart';
import 'package:structure_project_demo/core/utils/helper.dart';

class GridViewScreen extends StatefulWidget {
  const GridViewScreen({Key? key}) : super(key: key);

  @override
  State<GridViewScreen> createState() => _GridViewScreenState();
}

class _GridViewScreenState extends State<GridViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: GridView.builder(
                itemCount: 10,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 2,
                  mainAxisSpacing: 2,
                  mainAxisExtent: 200,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    color: Global.initalIndex == index
                        ? Colors.yellow
                        : Colors.pink,
                    child: Container(
                      margin: const EdgeInsets.all(50),
                      padding: const EdgeInsets.all(20),
                      color: Global.initalIndex == index
                          ? Colors.blue
                          : Colors.yellow,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: InkWell(
                          onTap: () {
                            setState(() {});
                            Helper select = Helper();
                            select.doSelect(index);
                            debugPrint("value... ${Global.isClick}");
                            debugPrint("value...$index");
                          },
                          child: const Icon(Icons.done),
                        ),
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
