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
              leading: Container(),
              title: Text("Tarefas"),
            ),
            body: Container(
              color: Colors.white,
              child: ListView(
                children: [
                  Task("Aprender Flutter",
                      "https://cdn.iconscout.com/icon/free/png-256/free-flutter-3629369-3032362.png"),
                  Task("task_title",
                      "https://storage.googleapis.com/cms-storage-bucket/780e0e64d323aad2cdd5.png"),
                  Task("Testeeeeeeee",
                      "https://logopng.com.br/logos/google-37.png"),
                  Task("task_title",
                      "https://logopng.com.br/logos/google-37.png"),
                  Task("Testeeeeeeee",
                      "https://logopng.com.br/logos/google-37.png"),
                  Task("task_title asdasdasd",
                      "https://logopng.com.br/logos/google-37.png"),
                ],
              ),
            )));
  }
}

class Task extends StatefulWidget {
  final String task_title;
  final String img;

  const Task(this.task_title, this.img, {Key? key}) : super(key: key);

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  int nivel = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Stack(
          children: [
            Container(
              color: Colors.blue,
              height: 140,
            ),
            Column(
              children: [
                Container(
                  color: Colors.white,
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          color: Colors.black26,
                          width: 72,
                          height: 100,
                          child: Image.network(
                            widget.img,
                            fit: BoxFit.cover,
                          )),
                      Container(
                        width: 140,
                        child: Text(
                          widget.task_title,
                          style: const TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            decoration: TextDecoration.none,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                nivel++;
                              });
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Icon(Icons.arrow_drop_up),
                                const Text(
                                  "UP",
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            )),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        //color: Colors.red,
                        width: 190,
                        child: LinearProgressIndicator(
                          value: nivel / 10,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Nivel: $nivel",
                        style: const TextStyle(
                          fontSize: 13,
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          decoration: TextDecoration.none,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
