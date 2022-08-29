import 'package:flutter/material.dart';
import 'package:internship/main.dart';
class College extends StatefulWidget {
  const College({Key? key}) : super(key: key);

  @override
  State<College> createState() => _CollegeState();
}

class _CollegeState extends State<College> {
  bool _pinned = true;
  bool _snap = false;
  bool _floating = false;
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
backgroundColor: Colors.black,
     floatingActionButton: Container(
       width: MediaQuery.of(context).size.width*0.9,
         child:
     FloatingActionButton(onPressed: (){},backgroundColor: Color.fromARGB(255,14,60,110),
         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
             child:Text("Apply Now",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),))),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              pinned: _pinned,
              snap: _snap,
              floating: _floating,
              expandedHeight: 160.0,
              backgroundColor: Color.fromARGB(255,14,60,110),

              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset("assets/1.png",fit: BoxFit.cover,),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  return;
                },
                childCount: 20,
              ),
            ),
          ]
      ),
    );
  }
}
