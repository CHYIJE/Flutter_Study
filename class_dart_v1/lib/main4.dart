void main(){
  List<int> numbers =[3,7,2,10,5];

  print('최대값 ${10}');
  int max = numbers[0];
  for(int i = 1 ; i < numbers.length; i++ ){
    if(numbers[i] > max){
      max = numbers[i];
    }
  }
  print('최대값${max}');



}