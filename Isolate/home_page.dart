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
                onPressed: () {},
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

  // double complexTask1() {}
}
//-- End of  HomePage --
