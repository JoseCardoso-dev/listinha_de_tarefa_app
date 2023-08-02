import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Tarefas'),
        ),
        body: Container(
          color: Colors.white,
          child: Column(children: [
            Stack(
              children: [
                Container(
                  color: Colors.blue,
                  width: 344,
                  height: 140,
                ),
                Container(
                  color: Colors.white,
                  width: 344,
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        color: Colors.grey,
                        width: 80,
                        height: 100,
                      ),
                      const Text('Compras do Mês'),
                      ElevatedButton(
                          onPressed: () {},
                          child: const Icon(Icons.arrow_drop_up)),
                    ],
                  ),
                )
              ],
            )
          ]),
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {}),
      ),
    );
  }
}
