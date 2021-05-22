

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OverlayLoadingWidget extends StatelessWidget {

  final bool isLoading;
  OverlayLoadingWidget(this.isLoading);

  @override
  Widget build(BuildContext context) {
    if(this.isLoading) {
      return Container(
        decoration: BoxDecoration(),
        color: Color.fromRGBO(0, 0, 0, 0.6),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation(Colors.white),
            )
          ],
        ),
      );
    }else{
      return Container();
    }
  }
}