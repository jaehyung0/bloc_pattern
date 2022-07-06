import 'package:flutter/material.dart';

import 'package:blocprac/src/stateful/component/count_view_stateless.dart';

class PlusStatefulDisplayWidget extends StatefulWidget {
  PlusStatefulDisplayWidget({Key? key}) : super(key: key);

  @override
  _PlusStatefulDisplayWidgetState createState() =>
      _PlusStatefulDisplayWidgetState();
}

class _PlusStatefulDisplayWidgetState extends State<PlusStatefulDisplayWidget> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("기본 Stateful"),
      ),
      body: CountViewStateless(count: count),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
              icon: Icon(Icons.add),
              color: Colors.blue,
              onPressed: () {
                setState(() {
                  count++;
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.remove),
              color: Colors.blue,
              onPressed: () {
                setState(() {
                  count--;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}