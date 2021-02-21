import 'package:flutter/material.dart';
import 'package:inspiration_ticket/view/pages/authorized/cards/cards.page.dart';
import 'package:inspiration_ticket/view/pages/authorized/home/bottom-menu/bottom-menu.widget.dart';
import 'package:inspiration_ticket/view/pages/authorized/promotions/promotion.page.dart';

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
      body: _selectedPage(_currentTab),
      bottomNavigationBar: BottomMenuWidget(
        onSelectTab: _selectedPage,
      ),
    );
  }

  Widget _selectedPage(TabItem tabItem) {
    setState(() {
      _currentTab = tabItem;
    });

    switch (tabItem.index) {
      case 0:
        return CardsPage();
        break;
      case 1:
        return PromotionPage();
        break;
      default:
        return CardsPage();
    }
  }
}
