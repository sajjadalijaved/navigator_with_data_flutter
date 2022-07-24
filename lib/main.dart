import 'package:flutter/material.dart';
import 'package:navigator_with_data/route.dart';
import 'package:navigator_with_data/secscreen.dart';
import 'package:navigator_with_data/third.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: MyApp.myPage,
    onGenerateRoute: MyRoute.generateRoute,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  static String myPage = 'MyHomePage';
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            InkWell(
                onTap: () {
                  Navigator.pushNamed(context, ThirdPage.mypage,
                      arguments: 'I love Pakistan');
                      
                },
                child: Container(
                    color: Colors.amber,
                    height: 200,
                    width: 200,
                    child: const Text('My First Page')))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, ThirdPage.mypage,
            arguments: 'My Class Data'),
      ),
    );
  }
}
