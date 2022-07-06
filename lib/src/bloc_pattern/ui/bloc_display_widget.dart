import 'package:blocprac/src/bloc_pattern/components/clone_count_view.dart';
import 'package:flutter/material.dart';
import 'package:blocprac/src/bloc_pattern/bloc/count_bloc.dart';
import 'package:blocprac/src/bloc_pattern/components/count_view.dart';

class BlocDisplayWidget extends StatefulWidget {
  BlocDisplayWidget({Key? key}) : super(key: key);

  @override
  _BlocDisplayWidgetState createState() => _BlocDisplayWidgetState();
}

class _BlocDisplayWidgetState extends State<BlocDisplayWidget> {
  final CountBloc countBloc = CountBloc();
  @override
  void dispose() {
    super.dispose();
    countBloc.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("bloc 패턴"),
      ),
      body: Column(
        children: [
          Expanded(child: CountView(countBloc: countBloc)),
          Expanded(child: CloneCountView(countBloc: countBloc)),
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                countBloc.add();
              },
            ),
            IconButton(
              icon: Icon(Icons.remove),
              onPressed: () {
                countBloc.minus();
              },
            )
          ],
        ),
      ),
    );
  }
}