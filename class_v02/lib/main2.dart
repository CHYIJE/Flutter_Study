import 'package:class_v02/main.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp2());
}

class MyApp2 extends StatelessWidget {
  const MyApp2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            children: <Widget>[
              Text('잘 살아보세',
              style: TextStyle(
                fontFamily: 'Sunflower',
                fontSize: 24
              ),
              ),
              Text('저 산은 고속도로에 불필요하다',
                style: TextStyle(
                    fontFamily: 'Sunflower',
                    fontSize: 24
                ),
              ),
              Image.asset('assets/images/a.png',
              width: 200,
              height: 200,
              fit: BoxFit.cover,
              ),
              // 네크워크 상에 존재하는 이미지 렌더링 방법
              Image.network('https://picsum.photos/seed/picsum/300/300',
                width: 300,
                height: 300,
                loadingBuilder: (context, child, loadingProgress) {
                  if(loadingProgress == null) {
                    return child;
                    } else {
                    return CircularProgressIndicator(
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded / (loadingProgress.expectedTotalBytes ?? 1)
                          : null,
                    );
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }

}