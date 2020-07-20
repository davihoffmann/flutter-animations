import 'package:app_animations/screens/home/widget/list_data.dart';
import 'package:flutter/material.dart';

class AnimatedListView extends StatelessWidget {

  final Animation<EdgeInsets> listSlidePosition;

  AnimatedListView({@required this.listSlidePosition});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        ListData(
          title: "Estudar Flutter",
          subtitle: "Todos os dias, pelo menos 1h ao dia",
          image: AssetImage('images/perfil.jpeg'),
          margin: listSlidePosition.value * 1,
        ),
        ListData(
          title: "Estudar Flutter",
          subtitle: "Todos os dias, pelo menos 1h ao dia",
          image: AssetImage('images/perfil.jpeg'),
          margin: listSlidePosition.value * 0,
        )
      ],
    );
  }
}