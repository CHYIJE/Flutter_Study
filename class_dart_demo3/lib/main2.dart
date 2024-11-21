void main(){
  calculateInterest(5000,10,1);
}

void calculateInterest(double principal , double rate , double year){
  double interest =(principal *rate*year)/100;
  print('이자율 :${interest}');
}

// 문제 1 - 함수 선언
double calculateCircleArea(double radius) {
  // 원에 면적 : 파이(3.14) * 반지름 * 반지름
  return 3.14 * radius * radius;
}

// 문제 2 - 함수 선언
double calculateRectangArea(double width, double hegith) {
  // 직사각형 면적 : 가로 * 세로
  return width * hegith;
}
