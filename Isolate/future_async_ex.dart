void main() async {
	methodA();
	// await를 만나면 methodB() 실행하고 끝날때 까지 기다린다
	await methodB();
	await methodC('main');
	methodD();
}

methodA() {
	print('A');
}

methodB() async {
	print('B start');
	await methodC('B');
	print('B end');
}

methodC(String from) async {
	print('C start from $from');
	
	// Future은 다른 공간에 다 넣어놓고 Event Queue? 끝나면 마지막에 다 출력
	Future(() {
		print('C running Future from $from');
	}).then((_){
		print('C end of Future from $from');
	});

	print('C end from $from');
}

methodD() {
	print('D');
}
