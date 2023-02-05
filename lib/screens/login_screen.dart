import 'package:flutter/material.dart';
import 'package:structure_project_demo/core/utils/app_asstes.dart';
import 'package:structure_project_demo/core/utils/app_strings.dart';
import 'package:structure_project_demo/core/utils/global.dart';
import 'package:structure_project_demo/core/utils/helper.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Global.isColor ? Colors.red : Colors.yellow,
      appBar: AppBar(),
      body: Column(
        children: [
          const Center(
            child: Text("Flutter"),
          ),
          Image.asset(
            AppAssets.personIcon,
            height: 30,
          ),
          Image.asset(
            AppAssets.penIcon,
            height: 30,
            color: Colors.yellow,
          ),
          Image.asset(
            AppAssets.micActiveIcon,
            height: 30,
          ),
          Image.asset(
            AppAssets.image9,
            height: 30,
          ),
          const SizedBox(
            height: 10,
          ),
          Image.asset(
            AppAssets.image10,
            height: 30,
          ),
          const SizedBox(
            height: 10,
          ),
          Image.asset(
            AppAssets.image11,
            height: 30,
          ),
          const Text(AppStrings.appName),
          // Text(Helper.doSum(10, 40).toString()),
          TextButton(
            onPressed: () {
              Helper.doSum(90, 90);
              Helper.oddEven(11);
              setState(() {
                Global.isColor = !Global.isColor;
              });
              debugPrint("value.   ${Global.isColor}");
              debugPrint("Sum. ${Global.sum}");
            },
            child: const Text("text"),
          ),
          Text(Global.sum == 130 ? "sign" : "login"),
          ElevatedButton(
              onPressed: () {
                Helper.doCheck();
                Helper.doMake();
                Helper.doMak();
               Helper a=Helper();
               a.doA();
              },
              child: const Text("loop"),),
        ],
      ),
    );
  }
}
