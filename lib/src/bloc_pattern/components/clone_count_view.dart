import 'package:blocprac/src/bloc_pattern/bloc/count_bloc.dart';
import 'package:flutter/material.dart';

class CloneCountView extends StatelessWidget {
  CountBloc countBloc;
  CloneCountView({Key? key,required this.countBloc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: StreamBuilder(
          stream: countBloc.count,
          initialData: 0,
          builder: (BuildContext context, AsyncSnapshot snapshot){
            if(snapshot.hasData){
              return Text(
                snapshot.data.toString(),
                style: TextStyle(fontSize: 80)
              );
            }
            return CircularProgressIndicator();
          }
      ),
    );
  }
}
