
void main(){
  // MAP 은 키/값을 사용한다.
  Map<String,int> myDict ={"빵올" : 1 ,"포도" :2,"사과" : 3};
  print(myDict.runtimeType);

  // 맵에 새로운 키값 추가하기
  myDict['케이트'] = 4;

  print(myDict['케이트']);

  // 읽기
  print(myDict['빵올']);
  print(myDict.keys);
  print(myDict.values);
  print(myDict.entries);

  // 수정
  myDict['홍길동'] = 100;

  // 삭제
  myDict.remove('빵올');
  print(myDict);
  
  // map 에 특정 키/값이 존재하는지 확인하는 방법
  print(myDict.containsKey('빵올'));
  print(myDict.containsKey('케이트'));

  // map 을 다룰때 다른 데이터 타입으로 변환해야 하는 경우 --> LIST
  // 리스트로 변환
  var myDictKeys = myDict.keys;
  var myDictValues = myDict.values;
  print('데이터 타입 확인 1 : ${myDictKeys.runtimeType}');
  List<String> myDictKeyList = myDict.keys.toList();
  print('데이터 타입 확인 2: ${myDictKeyList.runtimeType}');

  // 기존에 존재하는 map 다른 map 데이터를 추가해야한다면?
  Map<String,int> myDict2 ={'한국' : 1 ,'일본' : 2};
  myDict.addAll(myDict2);

  print("----------------------");
  print(myDict);

}

