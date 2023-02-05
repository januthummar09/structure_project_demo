import 'package:flutter/material.dart';

class GridVeiwThiredScreen extends StatefulWidget {
  const GridVeiwThiredScreen({Key? key}) : super(key: key);

  @override
  State<GridVeiwThiredScreen> createState() => _GridVeiwThiredScreenState();
}

class _GridVeiwThiredScreenState extends State<GridVeiwThiredScreen> {
  Set active = {2, 3};
  bool doclick = false;
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
                    color: active.contains(index) ? Colors.yellow : Colors.pink,
                    child: Container(
                      margin: const EdgeInsets.all(50),
                      padding: const EdgeInsets.all(20),
                      color:
                          active.contains(index) ? Colors.blue : Colors.yellow,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              // if(active.contains(index)){
                              //   active.remove(index);
                              // }
                              // else{
                              //   active.add(index);

                              // }
                              active.contains(index)
                                  ? active.remove(index)
                                  : active.add(index);
                            });

                            debugPrint("value..........$active");
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
