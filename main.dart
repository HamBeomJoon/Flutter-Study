import 'package:"package명"/"폴더명"/"파일명".dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'title 이름',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),  // UI 색깔 지정
        useMaterial3: true,  // flutter 3부터 지원하는 Material 3 사용하기
      ),
      home: HomePage(),  // "파일명".dart에 있는 HomePage() 불러오기
    );
  }
}
