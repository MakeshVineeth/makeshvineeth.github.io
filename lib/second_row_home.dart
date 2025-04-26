import 'package:flutter/material.dart';
import 'package:makesh_gitpage/fixed_values.dart';
import 'package:makesh_gitpage/projects_list.dart';

class SecondRowHome extends StatelessWidget {
  final FixedValues fixedValues = FixedValues();

  SecondRowHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      color: Colors.blue,
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Center(
                child: Text(
                  'OUR PROJECTS',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    letterSpacing: fixedValues.fixedSpacing,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: ProjectsList(),
          ),
        ],
      ),
    );
  }
}
