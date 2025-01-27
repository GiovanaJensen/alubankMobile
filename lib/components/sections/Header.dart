import 'package:alubank/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter, 
          end: Alignment.bottomCenter,
          colors: ThemeColors.headerGradient,
        ),
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(15))  
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 80.0, 16.0, 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
              Text.rich(
                TextSpan(
                text: '\$', 
                style: TextStyle(color: Colors.white),
                children: <TextSpan> [TextSpan(
                    text: '1000.00',
                    style: Theme.of(context).textTheme.bodyLarge,
                ),]
                )),
              Text("Balanço disponível", style: TextStyle(color: Colors.white),)
            ],), 
            Icon(Icons.account_circle, size: 42, color: Colors.white,)],
        ),
      ),
    );
  }
}