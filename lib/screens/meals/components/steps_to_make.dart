import 'package:flutter/material.dart';
import 'package:meals_app/models/meal.dart';

class StepsInfo extends StatelessWidget {
  const StepsInfo({
    Key? key,
    required this.routeArgs,
    required this.deviceWidth,
    required this.selectedMeal,
  }) : super(key: key);

  final Map<String, dynamic> routeArgs;
  final double deviceWidth;
  final Meal selectedMeal;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10.0,
            horizontal: 20.0,
          ),
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 90,
                    height: 35,
                    padding: const EdgeInsets.only(
                      left: 10.0,
                      top: 5.0,
                      bottom: 5.0,
                    ),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          routeArgs['color']!.withOpacity(0.6),
                          Colors.white,
                        ],
                        begin: Alignment.centerRight,
                        end: Alignment.centerLeft,
                      ),
                    ),
                    child: null,
                  ),
                  Container(
                    width: 90,
                    height: 35,
                    padding: const EdgeInsets.only(
                      left: 10.0,
                      top: 5.0,
                      bottom: 5.0,
                    ),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          routeArgs['color']!.withOpacity(0.6),
                          Colors.white,
                        ],
                      ),
                    ),
                    child: null,
                  ),
                ],
              ),
              Text(
                'Steps',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontSize: 25,
                    ),
              ),
            ],
          ),
        ),
        Container(
          width: deviceWidth - 30,
          decoration: BoxDecoration(
            color: routeArgs['color'].withOpacity(0.1),
            border: Border.all(
              color: Colors.grey,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          margin: const EdgeInsets.only(bottom: 100),
          padding: const EdgeInsets.only(top: 5, bottom: 5),
          child: GlowingOverscrollIndicator(
            axisDirection: AxisDirection.down,
            color: routeArgs['color']!,
            child: Column(
              children: List.generate(
                selectedMeal.steps.length,
                (index) => Column(
                  children: <Widget>[
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: routeArgs['color']!,
                        child: Text(
                          '#${index + 1}',
                          style: const TextStyle(
                            color: Colors.white,
                            letterSpacing: 1.2,
                          ),
                        ),
                      ),
                      title: Text(
                        selectedMeal.steps[index],
                      ),
                    ),
                    if (index != selectedMeal.steps.length - 1)
                      Divider(
                        indent: 65,
                        endIndent: 10,
                        color: routeArgs['color'].withOpacity(0.7),
                      ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
