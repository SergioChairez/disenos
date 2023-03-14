import 'package:flutter/material.dart';

class CustomBottomNavigatorBar extends StatelessWidget {
  const CustomBottomNavigatorBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showUnselectedLabels: false,
      selectedItemColor: Colors.pink,
        backgroundColor: Color.fromRGBO(55, 57, 84, 1),
        unselectedItemColor: Color.fromRGBO(116, 117, 152, 1),
        items: const [
          BottomNavigationBarItem(
              icon: Icon( Icons.calendar_today_outlined ),
              label: 'Calendar'
          ),
          BottomNavigationBarItem(
              icon: Icon( Icons.pie_chart_outline ),
            label: 'Graph'
          ),
          BottomNavigationBarItem(
              icon: Icon( Icons.supervised_user_circle_outlined ),
              label: 'Users'
          ),
        ]
    );
  }
}
