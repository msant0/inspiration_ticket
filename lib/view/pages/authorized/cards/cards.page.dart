import 'package:flutter/material.dart';
import 'package:inspiration_ticket/view/pages/authorized/cards/advertisements.widget.dart';
import 'package:inspiration_ticket/view/pages/authorized/cards/banner-food.widget.dart';
import 'package:inspiration_ticket/view/pages/authorized/cards/card-balance.widget.dart';
import 'package:inspiration_ticket/view/pages/authorized/cards/components/fast_acess.widget.dart';

class CardsPage extends StatefulWidget {
  @override
  _CardsWidgetState createState() => _CardsWidgetState();
}

class _CardsWidgetState extends State<CardsPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 60.0, left: 20.0, right: 20.0),
          child: CardBalanceWidget(),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            height: MediaQuery.of(context).size.width * 0.3,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              itemBuilder: (context, index) {
                return FastAcessComponent(
                  icon: Icons.photo_size_select_actual_outlined,
                  label: 'Fast Acess',
                );
              },
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: BannerFoodWidget(),
        ),
        AdvertisimentsWidget(),
      ],
    );
  }
}
