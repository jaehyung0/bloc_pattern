import 'package:flutter/material.dart';
import 'package:blocprac/src/bloc_pattern/bloc/count_bloc.dart';

class CountView extends StatelessWidget {
  CountBloc countBloc;
  CountView({Key? key,required this.countBloc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("CountView Build!!");
    return Center(
      child: StreamBuilder(
        stream: countBloc.count,
        initialData: 0,
        builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
          if (snapshot.hasData) {
            return Text(snapshot.data.toString(),style:TextStyle(fontSize: 50));
          }
          return CircularProgressIndicator();
        },
      ),
    );
  }
}