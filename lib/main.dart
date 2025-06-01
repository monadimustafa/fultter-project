import 'package:flutter/material.dart';
import 'package:flutter_project/views/calculator_view.dart';
import 'package:flutter_project/views/camera_view.dart';
import 'package:flutter_project/views/photo_view.dart';
import 'package:flutter_project/views/resources_view.dart';
import 'package:flutter_project/views/todo_view.dart';
import 'views/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Multi-View App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const HomeView(),
      routes: {
        '/todo': (context) => const ToDoView(),
        '/resources': (context) => const ResourcesView(),
        '/photo': (context) => const PhotoView(),
        '/calculator': (context) => const CalculatorView(),
        '/camera': (context) => const CameraView(),
      },
    );
  }
}

