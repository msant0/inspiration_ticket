import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum TabItem {
  cards,
  promotions,
  establishments,
  more,
}

Map<TabItem, String> tabName = {
  TabItem.cards: 'Cards',
  TabItem.promotions: 'Promotions',
  TabItem.establishments: 'Establishments',
  TabItem.more: 'More',
};

class BottomMenuWidget extends StatelessWidget {
  BottomMenuWidget({this.currentTab, this.onSelectTab});
  final TabItem currentTab;
  final ValueChanged<TabItem> onSelectTab;

  BottomNavigationBarItem _itemMenu(TabItem tabItem, IconData iconItem) {
    String label = tabName[tabItem];

    return BottomNavigationBarItem(
      icon: Icon(
        iconItem,
        color: Colors.grey,
      ),
      label: label,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      iconSize: MediaQuery.of(context).size.width * 0.05,
      type: BottomNavigationBarType.fixed,
      items: <BottomNavigationBarItem>[
        _itemMenu(TabItem.cards, FontAwesomeIcons.creditCard),
        _itemMenu(TabItem.promotions, FontAwesomeIcons.ticketAlt),
        _itemMenu(TabItem.establishments, FontAwesomeIcons.store),
        _itemMenu(TabItem.more, FontAwesomeIcons.ellipsisH),
      ],
    );
  }
}
