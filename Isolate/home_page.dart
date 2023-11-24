import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              // assets 폴더에 gifs 폴더 만들고 bounce-ball.gif 파일 넣어준 뒤, pubspec.yaml에 설정해주기
              Image.asset('assets/gifs/bounce-ball.gif'),
              ElevatedButton(
                onPressed: () {
                  // 매우 오래 걸리는 연산때문에 Task 1 버튼 눌렀을 때 화면 1초정도 멈춘 뒤 계산결과 출력하고 다시 gif 정상작동
                  var total = complexTask1();
                  debugPrint('Result 1: $total');
                },
                child: const Text('Task 1'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Task 2'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Task 3'),
              )
            ],
          ),
        ),
      ),
    );
  }

  double complexTask1() {
    var total = 0.0;
    for (var i = 0; i < 1000000000; i++) {
      total += i;
    }
    return total;
  }




}
//-- End of  HomePage --
