import 'package:alubank/components/box_card.dart';
import 'package:alubank/components/color_dot.dart';
import 'package:alubank/components/content_division.dart';
import 'package:alubank/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class RecentActivity extends StatelessWidget {
  const RecentActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return BoxCard(boxContent: _RecentActivityContent());
  }
}

class _RecentActivityContent extends StatelessWidget {
  const _RecentActivityContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 4.0),
                child: ColorDot(color: ThemeColors.recentActivity['spent']),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Saída"),
                  Text("\$9900.97", style: Theme.of(context).textTheme.bodyLarge,),
                ],
              )
            ],
          ),
          Row(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 4.0),
                    child: ColorDot(color: ThemeColors.recentActivity['income']),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Entrada"),
                      Text("\$9900.97", style: Theme.of(context).textTheme.bodyLarge,),
                    ],
                  )
                ],
              )
            ]
          ),
        ],
      ),
        Padding(
          padding: const EdgeInsets.only(top: 16.0, bottom: 8.0),
          child: Text("Limite de gastos: \$432.50"),
        ),
        Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: LinearProgressIndicator(
            minHeight: 8,
            value: 0.3,
            color: ThemeColors.primaryColor,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
          child: ContentDivision(),
        ),
        Text("Esse mês você gastou \$400 reais com jogos! Tente abaixar esse custo!"),
        TextButton(onPressed: (){}, child: Text("Diga-me como!", style: TextStyle(fontSize: 16, color: ThemeColors.primaryColor),))
      ],
    );
  }
}