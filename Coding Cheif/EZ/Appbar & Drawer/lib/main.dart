import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //우측 상단 빨간 띠를 없애
      title: 'AppBar',
      theme: ThemeData(primarySwatch: Colors.red),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appbar Icon Menu'),
        centerTitle: true,
        elevation: 0.0,
        //leading: IconButton(
        // leading_위젯이나 아이콘을 상위 위젯 왼쪽에 생성
        //  icon: Icon(Icons.menu),
        //  onPressed: () {
        //onPressed_void함수. 버튼을 눌렀을때 일어나는 이벤트 정의.
        //    print('menu button is clicked');
        //  },
        //),
        actions: [
          IconButton(
            //actions_여러 아이콘 등을 오른쪽에 배
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              print('Shopping cart button is clicked');
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print('Search button is clicked');
            },
          ),
        ],
      ),
      drawer: Drawer(
          child: ListView(
              //ListView는 여러개의 항목을 children을 통해 보여준다.
              //ListTile은 위의 항목에 해당하며 그 안에 icon, title, subtitle등 여러 내용을 쉽게 배치 가능.
              padding: EdgeInsets.zero, //여백 설정
              children: [
            UserAccountsDrawerHeader(
              //UADH는 ListView 중 머릿말(?)에 해당
              currentAccountPicture: CircleAvatar(
                //cAP는 현재 사용자의 이미지 가져오기.
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('assets/BJJ_초안.jpg'),
              ),
              otherAccountsPictures: [
                //위의 currentAccountPicture과는 다르게 Pictures로 List 형태이다.
                CircleAvatar(
                  backgroundImage: AssetImage('assets/JyuJipet.png'),
                  backgroundColor: Colors.white,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/JyuJipet.png'),
                  backgroundColor: Colors.white,
                )
              ],
              accountName: Text('BJJ'),
              accountEmail: Text('dydwo706@bjj.bjj'),
              onDetailsPressed: () {
                //아매알 옆에 추가 내용을 볼 수 있도록 해주는 화살표 모양의 버튼 생성.
                print('arrow is clicked');
              },
              decoration: BoxDecoration(
                  //꾸미기
                  color: Colors.orange[300],
                  borderRadius: BorderRadius.only(
                      //경계선의 반지름
                      bottomLeft: Radius.circular(40.0),
                      bottomRight: Radius.circular(40.0))),
            ),
            ListTile(
              //쭉 나열할 메뉴 목록
              leading: Icon(Icons.home,
                  color: Colors.grey[900]), //leading은 좌측에 배치, 어떤 icon쓸건지 설정
              title: Text('Hommy'),
              onTap: () {
                //클릭기능 설정
                print("Home is clicked");
              },
              trailing: Icon(Icons.add), //trailing은 우측에 배치
            ),
            ListTile(
              leading: Icon(Icons.settings, color: Colors.grey[900]),
              title: Text('Setting'),
              onTap: () {
                print("Setting is clicked");
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(Icons.question_answer, color: Colors.grey[900]),
              title: Text('FAQ'),
              onTap: () {
                print("FAQ is clicked");
              },
              trailing: Icon(Icons.add),
            )
          ])),
    );
  }
}
