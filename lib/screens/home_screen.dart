import 'package:flutter/material.dart';
import 'package:navigate_root/screens/detail_screen.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = '/';
  const HomeScreen({super.key});

@override
Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: ElevatedButton(
          onPressed: () async{
            final result = await Navigator.pushNamed(
              context,
              DetailScreen.routeName,
              arguments:{ 'ItemId': 'Item-456', 'message': 'ข้อมูลผ่าน argument'},
            );
            print('ได้ค่ากลับมาคือ: $result');
          },
          child: const Text('Go to Detail Screen'),
        ),
      ),
    );
  }
}
