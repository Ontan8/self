import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Middle extends StatefulWidget {
  const Middle({Key? key}) : super(key: key);

  @override
  _MiddleState createState() => _MiddleState();
}

class _MiddleState extends State<Middle> {
  final boxDecoration = BoxDecoration(
      border: Border.all(
        width: 2,
        style: BorderStyle.solid,
        color: Colors.black,
      ),
      borderRadius: BorderRadius.circular(15),
      color: Colors.white);

  final email = 'tanishqpawar80@gmail.com';

  int age = DateTime.now().year - 2001;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (ctx, constraints) {
        return Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: constraints.maxHeight * 0.4,
              child: const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/122.jpg'),
              ),
            ),
            Container(
              height: constraints.maxHeight * 0.2,
              alignment: Alignment.center,
              child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
                  decoration: boxDecoration,
                  child: Text(
                      '$age Years Old Student, Currently Learning Flutter')),
            ),
            Container(
              height: constraints.maxHeight * 0.2,
              alignment: Alignment.center,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
                child: const Text(
                    'Modern Education Society\'s College of Engineering.'),
                decoration: boxDecoration,
              ),
            ),
            Container(
              child: Container(
                child: Text('Email - $email'),
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
                decoration: boxDecoration,
              ),
              height: constraints.maxHeight * 0.2,
              alignment: Alignment.center,
            )
          ],
        );
      },
    );
  }
}
