import 'package:flutter/material.dart';

class SecScreen extends StatefulWidget {
  SecScreen({Key? key, this.data}) : super(key: key);
  static String myPage = 'MySecPage';
  String? data;
  @override
  State<SecScreen> createState() => _SecScreenState();
}

class _SecScreenState extends State<SecScreen> {
  @override
  Widget build(BuildContext context) {
    widget.data = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                  color: Colors.blue,
                  height: 200,
                  width: 200,
                  child: const Text('My Sec Screen Page')),
            ),
            Text(
              widget.data!,
              style: const TextStyle(fontSize: 50),
            )
          ],
        ),
      ),
    );
  }
}
