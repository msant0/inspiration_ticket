import 'package:flutter/material.dart';
import 'package:inspiration_ticket/view/pages/authorized/cards/cards.widget.dart';
import 'package:inspiration_ticket/view/pages/authorized/home/bottom-menu/bottom-menu.widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<HomePage> {
  TabItem _currentTab = TabItem.cards;
  Map<TabItem, GlobalKey<NavigatorState>> _navigatorKeys = {
    TabItem.cards: GlobalKey<NavigatorState>(),
    TabItem.promotions: GlobalKey<NavigatorState>(),
    TabItem.establishments: GlobalKey<NavigatorState>(),
    TabItem.more: GlobalKey<NavigatorState>(),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: _selectedItemMenu(_currentTab),
      bottomNavigationBar: BottomMenuWidget(),
    );
  }

  Widget _selectedItemMenu(TabItem tabItem) {
    if (tabItem == TabItem.cards) {
      return CardsWidget();
    } else {
      return Container();
    }
  }
}
