import 'package:flutter/material.dart';

class TodoCard extends StatelessWidget {

  final String title;
  final bool completed;
  final Function(int) updateToCompletions;
  final int index;


  TodoCard({
    required this.title,
    required this.completed,
    required this.updateToCompletions,
    required this.index,

  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        updateToCompletions(index);
      },
      child: FractionallySizedBox(
        widthFactor: 0.9,
        child: Card(
          child: Container(
            padding: EdgeInsets.all(20),
            height: 125,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  <Widget> [
                  Text(
                      title,
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      )
                  ),
                  Icon(
                    completed ? Icons.check : Icons.close,
                    color: completed ? Colors.green : Colors.red,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
