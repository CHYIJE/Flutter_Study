
void main(){
  // List -> [] Map -> {} Set ->{}
  Set<String> data ={'a','b','c'}; // 데이터 중복 불가능.
  print(data);

  data.add('d');

  data.remove('a');
  print(data);

  // 전체 데이터 비우기
  data.clear();
  print(data);
}

