import 'package:flutter/material.dart';

void main() => runApp(TodoApp());

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TodoScreen(),
    );
  }
}

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  // Todo기능을 개발 하기 위해 피요한 데이터는 뭘까??
  // UI 로직 : 프로젠테이션 로직
  final TextEditingController _controller = TextEditingController();

  // 데이터 : 할 일을 (목록을 저장하는 리스트(저장공간))
  List<String> todos = [];

  // 비즈니스 로직 : 할 일을 추가하는 기능
  void addTodo() {
    if (_controller.text.isNotEmpty) {
      setState(() {
        todos.add(_controller.text);

        print("todos 확인 : ${todos.toString()}");
      });
      _controller.clear(); // 프로젠테이션 로직

    }
  }

  // 비즈니스 로직 : 할 일을 삭제하는 기능
  void removeTodo(int index) {
    // 삭제
    setState(() {
      todos.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Todo List'),
      ),
      body: Column(
        children: [
          // 입력 필드 만들기
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(labelText: '작업을 입력 하시오'),
                  ),
                ),
                IconButton(
                    onPressed: addTodo,
                    icon: Icon(Icons.add))
              ],
            ),
          ),
          // 아래에 할일 목록 표시 구성
          Expanded(
            child: ListView.builder(
                itemCount: todos.length,
                itemBuilder: (context, index) {
              return ListTile(
                title: Text(todos[index]),
                trailing: IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () {
                    removeTodo(index);
                    },
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
