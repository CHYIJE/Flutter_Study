import 'package:equatable/equatable.dart';

void main() {

  print(const Post('홍길동전1') == const Post('홍길동전1'));
  print(const Post('홍길동전1'));
  print('-----------------------');
  print(identical(const Post('홍길동전1'), const Post('홍길동전1')));


}

class Post extends Equatable {
  final String title;
  const Post(this.title);

  @override // [객체 배열을 반환해라] => 너가 사용하고 싶은 객체에 멤버 변수를 선정해서
  List<Object?> get props => [title];


}