import 'package:flutter/material.dart';

class SignUpButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding: EdgeInsets.only(top: 240),
      onPressed: () => {},
      child: Text(
        "Não possui uma conta? Cadastre-se!",
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w300,
          fontSize: 14,
          letterSpacing: 0.5
        ),
      ),
    );
  }
}
