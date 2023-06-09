import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(App());
}


class App extends StatelessWidget {
   App({super.key});
  final List<String> array = [];
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Список',
      theme: ThemeData(primaryColor: Colors.green),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('List of elements'),
          backgroundColor: Colors.green,
        ),

        // бесконечный простой

        body: ListView.builder(itemBuilder: (BuildContext context, int index) {
          return Text('Строка $index');
        }),
        

        // бесконечный степень 2

        //  body: ListView.builder(itemBuilder: (BuildContext context, int index) {
        //   final exp = pow(2, index);
        //   String text = ''; 
        //    text = '2 ^ $index = $exp';
        //   return Padding(
        //     padding: const EdgeInsets.symmetric(vertical: 20),
        //     child: Column(
        //       mainAxisAlignment: MainAxisAlignment.start,
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       children: [
                
        //         Text(text),
        //         const Divider(),
        //       ],
        //     ),
        //   );
        // }),

        // 3 элемента
        // body: ListView(
        //   children: const [
        //     Text('0000'),
        //     Divider(),
        //     Text('0001'),
        //     Divider(),
        //     Text('0010'),
        //     Divider(),
        //   ],
        // ),
      ),
    );
  }
}