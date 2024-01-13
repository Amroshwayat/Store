import 'package:flutter/material.dart';
import 'package:store/Widgets/ViewItem.dart';

class ViewNext extends StatelessWidget {
  const ViewNext({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
    
      children: [
        ViewItem(Ima: "assets/images/412915663_17892916709954192_1741805400600542068_n.jpg",title: "E Shoping" ,SubTitle: "Explore Top Cokctail"),
         ViewItem(Ima: "assets/images/OIP.jpeg",title: "E Shoping" ,SubTitle: "Explore Top Crepe"), 
        ViewItem(Ima: "assets/images/406023082_17888968667954192_8552568214693923613_n.jpg",title: "E Shoping" ,SubTitle: "Explore Top Waffle"),
       
      ],

    );
  }
}