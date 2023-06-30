import 'package:app/screens/calendar.dart';
import 'package:app/screens/map.dart';
import 'package:app/screens/mypage.dart';
import 'package:app/screens/ranking.dart';
import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentTab = 0;

  final List<Widget> screens = [
    Calendar(),
    Map(),
    Ranking(),
    MyPage()
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Calendar();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      bottomNavigationBar: BottomAppBar(
        height: 100,
        shape: CircularNotchedRectangle(),
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 0,
                    onPressed: (){
                      setState(() {
                        currentScreen = Calendar();
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.calendar_month,
                          color: currentTab == 0 ? Color(0xff76BDFF) : Colors.grey,
                        ),
                        Text(
                          "달력",
                          style: TextStyle(
                            color: currentTab == 0 ? Color(0xff76BDFF) : Colors.grey,
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 0,
                    onPressed: (){
                      setState(() {
                        currentScreen = Map();
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.map_outlined,
                          color: currentTab == 1 ? Color(0xff76BDFF) : Colors.grey,
                        ),
                        Text(
                          "지도",
                          style: TextStyle(
                            color: currentTab == 1 ? Color(0xff76BDFF) : Colors.grey,
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 0,
                    onPressed: (){
                      setState(() {
                        currentScreen = Ranking();
                        currentTab = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.bar_chart,
                          color: currentTab == 2 ? Color(0xff76BDFF) : Colors.grey,
                        ),
                        Text(
                          "랭킹",
                          style: TextStyle(
                            color: currentTab == 2 ? Color(0xff76BDFF) : Colors.grey,
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 0,
                    onPressed: (){
                      setState(() {
                        currentScreen = MyPage();
                        currentTab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.person,
                          color: currentTab == 3 ? Color(0xff76BDFF) : Colors.grey,
                        ),
                        Text(
                          "마이페이지",
                          style: TextStyle(
                            color: currentTab == 3 ? Color(0xff76BDFF) : Colors.grey,
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          )
        ),
      )
    );
  }
}
