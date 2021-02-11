import 'package:flutter/material.dart';
import 'package:inspiration_ticket/view/pages/authorized/home/banner-food.widget.dart';
import 'package:inspiration_ticket/view/pages/authorized/home/card-balance.widget.dart';
import 'package:inspiration_ticket/view/pages/authorized/home/components/fast_acess.widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(
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
          BannerFood(),
        ],
      ),
    );
  }
}
