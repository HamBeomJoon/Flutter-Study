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

// 이렇게 따로 home: HomePage()로 불러와도 되고, 그냥 main.dart 아래에 바로 class HomePage extends StatelessWidget{ } 으로 쭉 이어서 하나로 만들어도 됨
