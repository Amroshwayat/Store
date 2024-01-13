import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/Models/HomePage.dart';
import 'package:store/Widgets/Home_view.dart';

void main(){
  runApp(HomePage());
}
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  AnimationController? an;
  Animation <double>?an1;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    an=AnimationController( vsync: this,duration: Duration(milliseconds: 1000));
    an1=Tween<double> (begin: .2,end:1).animate(an!);
    an?.repeat(reverse: true);
         goNextView();
  }
  @override
  void dispose() {
    // TODO: implement dispose
     an?.dispose();
  
    super.dispose();
  
   
  }
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        backgroundColor: Color(0xff595959),
        body:
          Center(child: Column(children:[ Spacer(flex: 4,),CircleAvatar( radius: 100,backgroundImage: AssetImage("assets/images/362631096_840518104229320_1606733517352887051_n.jpg"),),Spacer(flex: 2,), FadeTransition(opacity: an1!,child: Text("Welcom in Store",style: TextStyle(fontFamily: "Pacifico",color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),),Spacer(flex: 2,)] ))),
      );
    
  }
  
  void goNextView() {
    Future.delayed(Duration(seconds: 4),() {
      Get.to(()=>ViewBody(),transition:  Transition.fade);
    },);
  }
}