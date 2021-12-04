
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          const Text('Hello, friend.'),

          // Weather button
          MaterialButton(
            onPressed: () {},
            color: Colors.blue,
            child: Row(
              children: const <Widget>[

                Text('Weather today'),

                Icon(
                  Icons.wb_sunny,
                  key: Key('icon_weather'),
                ),
              ],
            ),
          ),
        ],
      )
    );
  }
}