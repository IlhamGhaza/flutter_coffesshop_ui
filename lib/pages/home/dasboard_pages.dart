import 'package:flutter/material.dart';
import 'package:flutter_coffesshop_ui/core/widgets/home_fragments.dart';
import 'package:gap/gap.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    int indexMenu = 0;
    final menu = [
      {
        'icon': 'assets/ic_home_border.png',
        'icon_active': 'assets/ic_home_filled.png',
        'fragment': const HomeFragments(),
      },
      {
        'icon': 'assets/ic_heart_border.png',
        'icon_active': 'assets/ic_heart_border.png',
        'fragment': const Center(child: Text('Favorite')),
      },
      {
        'icon': 'assets/ic_bag_border.png',
        'icon_active': 'assets/ic_bag_border.png',
        'fragment': const Center(child: Text('Bag')),
      },
      {
        'icon': 'assets/ic_notification_border.png',
        'icon_active': 'assets/ic_notification_border.png',
        'fragment': const Center(child: Text('Notification')),
      },
    ];
    return Scaffold(
      bottomNavigationBar: Container(
        height: 60,
        child: Row(
          children: List.generate(menu.length, (index) {
            Map item = menu[index];
            bool isActive = indexMenu == index;
            return Column(
              children: [
                ImageIcon(AssetImage(item[isActive? 'icon_active' : 'icon'],
                ),
                ),
                if(isActive)const Gap(6),
                if(isActive) 
                Container(
                  height: 5,
                  width: 10,
                  decoration: BoxDecoration(
                    color: Color(0xffC67C4E),
                    borderRadius: BorderRadius.circular(18),
                  ),
                )
              ],  
            );
          }),
        ),
      ),
    );
  }
}
