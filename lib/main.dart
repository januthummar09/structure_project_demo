import 'package:flutter/material.dart';
import 'package:structure_project_demo/core/utils/them.dart';
import 'package:structure_project_demo/screens/grid_veiw_thired_screen.dart';
import 'package:structure_project_demo/screens/grid_view_screen.dart';
import 'package:structure_project_demo/screens/grid_view_second_screen.dart';
import 'package:structure_project_demo/screens/use_them_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: MyThem().lightTheme,
      // ThemeData(

        // brightness: Brightness.light,
        // primaryColor: Colors.red,
        // primarySwatch: Colors.yellow,
        // appBarTheme: const AppBarTheme(
        //   backgroundColor: Colors.pink,
        // ),
        // textTheme: const TextTheme(
        //   headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
        //   headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
        //   bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        //   headline2: TextStyle(fontSize: 72.0, fontWeight: FontWeight.w600),
        // ),
      // ),
      home: const UseThemScreen(),
    );
  }
}
