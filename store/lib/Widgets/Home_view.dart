import 'package:flutter/material.dart';
import 'package:store/Widgets/ViewNext.dart';

class ViewBody extends StatelessWidget {
  const ViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body:Stack(
      children: [Positioned(  top:MediaQuery.of(context).size.height*0.1,
      right: 32,child: Text("Skip")),
      
      ViewNext(),
      
      Positioned(
        bottom: MediaQuery.of(context).size.height*0.1,
        left: MediaQuery.of(context).size.width*0.4,
        child: Center(
          child: Container(
            height: 50,
            width: 100,
            
            decoration: BoxDecoration(color: Color(0xff595959),borderRadius: BorderRadius.circular(8)),child:Center(child: Text("Next"))
              
          ),
        ),
      )],
    ));
  }
}