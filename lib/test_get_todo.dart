import 'package:demo_tex_native/injector.dart';
import 'package:flutter/material.dart';
import 'package:demo_tex_native/my_service.dart';

void main() {
  setup();
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  late MyService myService;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    myService = getIt<MyService>();
    myService.getTodos().then((todos) {
      // Handle the fetched todos here
      print(todos);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
