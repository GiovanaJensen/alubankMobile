import 'package:alubank/components/box_card.dart';
import 'package:alubank/components/color_dot.dart';
import 'package:alubank/components/content_division.dart';
import 'package:alubank/components/sections/Header.dart';
import 'package:alubank/components/sections/Recent_activity.dart';
import 'package:alubank/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(
      children: <Widget>[
        Header(),
        RecentActivity(),
      ],
    ),);
  }
}