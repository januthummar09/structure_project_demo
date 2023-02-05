import 'package:flutter/material.dart';

import 'package:structure_project_demo/core/utils/global.dart';
import 'package:structure_project_demo/core/utils/helper.dart';


class GridViewSecondScreen extends StatefulWidget {
const GridViewSecondScreen({ Key? key }) : super(key: key);

  @override
  State<GridViewSecondScreen> createState() => _GridViewSecondScreenState();
}

class _GridViewSecondScreenState extends State<GridViewSecondScreen> {
  @override
  Widget build(BuildContext context){
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
                    color: Global.isClick
                        ? Colors.yellow
                        : Colors.pink,
                    child: Container(
                      margin: const EdgeInsets.all(50),
                      padding: const EdgeInsets.all(20),
                      color: Global.isClick ? Colors.blue : Colors.yellow,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              Global.isClick = !Global.isClick;
                            });
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