import 'package:flutter/material.dart';

void main() {
  runApp(MyApp7());
}

class MyApp7 extends StatefulWidget {
  const MyApp7({super.key});

  @override
  State<MyApp7> createState() => _MyApp7State();
}

class _MyApp7State extends State<MyApp7> {
  // bool 데이터 타입과 bool? 타입은 다른것이다.
  bool? _checkBoxValue = true;
  String _radioValue = 'Option1';

  double _sliderValue = 0;
  bool? _sValue = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('MyApp7'),
        ),
        body: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Center(
                child: Text('$_checkBoxValue'),
              ),
              const SizedBox(height: 16.0),
              Checkbox(
                value: _checkBoxValue,
                onChanged: (value) {
                  print('value : $value');
                  setState(() {
                    _checkBoxValue = value;
                  });
                },
              ),
              const SizedBox(height: 16.0),
              Text('Radio Button'),
              Row(
                children: [
                  Radio(
                    value: '디아블로',
                    groupValue: _radioValue,
                    onChanged: (value) {
                      setState(() {
                        print('value : $value');
                        _radioValue = value.toString();
                      });
                    },
                  ),
                  Text('디아블로'),
                  Radio(
                    value: '거상',
                    groupValue: _radioValue,
                    onChanged: (value) {
                      setState(() {
                        print('value : $value');
                        _radioValue = value.toString();
                      });
                    },
                  ),
                  Text('거상'),


                  Slider(value: _sliderValue, onChanged: (value) {
                    setState(() {
                      print('value : $value');
                      _sliderValue = value;
                    });
                  }),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
