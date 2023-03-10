import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test/testlogin/chat.dart';
import 'package:test/ui/home/home_page.dart';
import 'package:test/ui/home/profil.dart';
import 'package:test/ui/home/schedule.dart';


class NaviBot extends StatefulWidget {
  static const routeName = '/navi';
  @override
  _NaviBotState createState() => _NaviBotState();
}

class _NaviBotState extends State<NaviBot> {
  int currentIndex= 0;
  final List<Widget> body =[
    HomePage(),
    SchedulePage(),
    ChatPage(),
    pageProfile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: ontapped,
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.grey,),
            activeIcon: Icon(Icons.home, color: Color(0xff98A7F2),),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.schedule, color: Colors.grey,),
            activeIcon: Icon(Icons.schedule, color: Color(0xff98A7F2),),
            label: 'Schedule',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat, color: Colors.grey,),
            activeIcon: Icon(Icons.chat, color: Color(0xff98A7F2),),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_rounded, color: Colors.grey,),
            activeIcon: Icon(Icons.account_circle_rounded, color: Color(0xff98A7F2),),
            label: 'Profil',
          ),
        ],
      ),
    );
  }
  void ontapped(int index){
    setState(() {
      currentIndex = index;
    });
  }
}
