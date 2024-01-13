import 'package:flutter/material.dart';

class ViewItem
 extends StatelessWidget {
  const ViewItem
  ({super.key, required this.Ima, required this.title, required this.SubTitle}) ;
  final String? Ima;
  final String? title;
  final String? SubTitle;


  @override
  Widget build(BuildContext context) {
    return  Column(children: [
      SizedBox(height: MediaQuery.of(context).size.height*0.2,),

          Image.asset(Ima!,width: MediaQuery.of(context).size.width*0.5,height: MediaQuery.of(context).size.height*0.5,)
          ,SizedBox(height:0.1),
          Text(title!,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.orange),textAlign: TextAlign.left,),SizedBox(height:15,),
          Text(SubTitle!,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.left)

        ],);
  }
}