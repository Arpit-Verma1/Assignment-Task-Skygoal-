import 'package:flutter/painting.dart';
import 'dart:ui' as ui;
import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:internship/home1.dart';
import 'package:internship/main.dart';
import 'package:page_view_indicators/circle_page_indicator.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
// @dart=2.9
class screen extends StatefulWidget {
  const screen({Key? key}) : super(key: key);

  @override
  State<screen> createState() => _screenState();
}

class _screenState extends State<screen> {
  final _currentPageNotifier = ValueNotifier<int>(0);
   double top=0;
   double _value=0;
   int bed=4;
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return DefaultTabController(length: 3,
      child:  Scaffold(
        floatingActionButton: Container(width: size.width*0.86,margin: EdgeInsets.only(left: 6,right: 6),
          height: size.height*0.06,
          child: ElevatedButton(onPressed: (){}, child: Text("Apply Now",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
          style: ElevatedButton.styleFrom(primary:Color.fromARGB(255,14,60,110),
              shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)) ),),),

       body:DefaultTabController(
        length: 4,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 295.0,
                floating:false,
                pinned: true,
                snap: false,
                actionsIconTheme: IconThemeData(opacity: 0.0),

                backgroundColor: Color.fromARGB(255,14,60,110),
                flexibleSpace:LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
    // print('constraints=' + constraints.toString());
    top = constraints.biggest.height;
    return
    FlexibleSpaceBar(
      title: Align(alignment: Alignment.bottomLeft,child:Padding(padding: EdgeInsets.only(left: 10),child:
      Text(top.toString()=="84.0"?"GHKJ Enginnering College":"",style: TextStyle(color: Colors.white),),),),
                    centerTitle: true,
                    background: Container(
                      child:  Column(
                        children: [Container(height: size.height*0.11,color: Color.fromARGB(255,14,60,110),
                          child: Padding(padding: EdgeInsets.only(top: 25),child:
                          Row(children: [ElevatedButton(onPressed: (){
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyHomePage()));
                          }, child:Icon(Icons.arrow_back,color: Colors.black,size: 20,),style: ElevatedButton.styleFrom(primary: Colors.white,
                              shape:CircleBorder()), ),SizedBox(width: size.width*0.6,),
                            ElevatedButton(onPressed:(){}, child: Icon(Icons.bookmark_border,color: Colors.black,size: 20,),
                              style: ElevatedButton.styleFrom(primary: Colors.white,shape:CircleBorder(),
                              )),

                          ],),)),
                          Container(height: size.height*0.2,width: size.width,child:
                          Image.asset("assets/iit.jpg",fit: BoxFit.fill,), ),  Container(color: Colors.white,width:size.width,child:Padding(padding: EdgeInsets.all(10),child:

                          Row(
                            children: [
                            Expanded(child: Column(
                              children: [
                               Align(alignment: Alignment.topLeft,child: Text("GHKJ Engineering College",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),)),
                                SizedBox(height: size.height*0.01,),
                                Text("Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet,",style: TextStyle(color: Colors.grey),),
                              ],
                            )),Container(width: size.width*0.11,height: size.height*0.08,margin: EdgeInsets.all(5),
                              decoration: BoxDecoration(color:Colors.green,borderRadius: BorderRadius.circular(10)),
                              child:Padding(padding: EdgeInsets.all(5),child: Column(children: [
                                Text("4.4",style: TextStyle(color: Colors.white,fontSize: 17),), Icon(Icons.star,color: Colors.white,)],),),),

                          ],),),),

                        ],
                      )
                    )
                    );}
                   )
              ),
              SliverPersistentHeader(
                floating: false,
                delegate: _SliverAppBarDelegate(
                  TabBar(
                    indicatorSize: TabBarIndicatorSize.label,
                    indicatorColor:Color.fromARGB(255,14,60,110) ,
                    isScrollable:true,
labelColor: Colors.black,
                    unselectedLabelColor: Colors.black,
                    tabs: [
                      Tab(text: "About College",),
                      Tab(text: "Hostel Facility"),
                      Tab( text: "Q & A"),
                      Tab( text: "Events"),
                    ],
                  ),
                ),
                pinned: true,
              ),
            ];
          },
          body:
          TabBarView(
              children: [
            SingleChildScrollView(child:
            Container(child: Padding(padding: EdgeInsets.all(25),child: Column(mainAxisAlignment: MainAxisAlignment.start,
              children: [Align(alignment:Alignment.topLeft,child:
                Text("Description",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),),
              SizedBox(height: size.height*0.02,),
              Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam."
                  " Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue"
                  " semper porta. Mauris massa. Vestibulum lacinia arcu eget nulla",style: TextStyle(color: Colors.grey),),
                SizedBox(height: size.height*0.03,),
                Align(alignment:Alignment.topLeft,child:
                Text("Location",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),),
                SizedBox(height: size.height*0.01,),

             Container(
               child:ClipRRect(borderRadius:BorderRadius.all(Radius.circular(15),),child:
               Image.asset("assets/10.png",),)),
         SizedBox(height: size.height*0.01,),
              Align(alignment:Alignment.topLeft,child:Text("Student Review",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)),
                SizedBox(height:size.height*0.01 ,),


                Row(children: [
                  GestureDetector(
                    onTap: (){
                      setState((){
                        _value=5;
                      });
                    },
                    child: Container(
                    width: size.width*0.12,height: size.height*0.07
                    ,child: Image.asset("assets/16.png"),),),
                  SizedBox(width: size.width*0.05),
                  GestureDetector(onTap: (){
                    setState((){
                      _value=25;
                    });
                  },
                    child: Container(
                    width: size.width*0.12,height: size.height*0.07
                    ,child: Image.asset("assets/17.png"),),),
           SizedBox(width: size.width*0.05)
                  ,GestureDetector(onTap: (){
                    setState((){
                      _value=45;
                    });
                  },
                    child: Container(
                    width: size.width*0.12,height: size.height*0.07
                    ,child: Image.asset("assets/18.png"),),),
    SizedBox(width: size.width*0.05),
                  GestureDetector(onTap: (){
                    setState((){
                      _value=65;
                    });
                  },
                    child: Container(
                    width: size.width*0.12,height: size.height*0.07
                    ,child: Image.asset("assets/18.png"),),),
                  SizedBox(width: size.width*0.06),
                  GestureDetector(onTap: (){
                    setState((){
                      _value=85;
                    });
                  },
                    child: Container(decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(10)),
                    padding:EdgeInsets.only(top: 7),
                    width: size.width*0.17,height: size.height*0.06
                    ,child: Text("+12",style: TextStyle(color:Color.fromARGB(255,14,60,110),fontWeight: FontWeight.bold,fontSize: 17 ),),),),
                ],),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(

                    inactiveTrackColor: Colors.transparent,
                    trackHeight: 0.0,

                    thumbShape: RetroSliderThumbShape(),

                    overlayShape: RoundSliderOverlayShape(overlayRadius: 14.0),
                  ),
                  child: Slider(
                      min: 0.0,
                      max: 100.0,
                      value: _value,
                      onChanged: (value) {
                        setState(() {
                          _value = value;
                        });
                      }),
                ),

                Container(width: size.width*0.9,height:size.height*0.2,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),boxShadow: [
                  BoxShadow(
                  color: Colors.grey.shade400,
                    offset: const Offset(
                      -1.0,
                      -1.0,
                    ),
                    blurRadius: 10.0,
                    spreadRadius: 5.0,
                  ), //BoxShadow
                  BoxShadow(
                    color: Colors.white,
                    offset: const Offset(-1.0,
                      -1.0,),
                    blurRadius: 0.0,
                    spreadRadius: 0.0,
                  ), //BoxShadow
                  ],),
                    child:Padding(padding: EdgeInsets.only(left: 10,right: 40,top: 10,bottom: 10),child:
                        Column(children: [
                          Align(alignment: Alignment.topLeft,child:
                          Text(_value==5?"Arun sai"
                            :_value==25?"Nikita"
                          :_value==45?"Rupali"
                          :_value==65?"Mohini"
                            :"Others",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),),
                          SizedBox(height: 5,),
                            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
                                "Integer nec odio. Praesent libero. Sed cursus ante dapibus . ",style: TextStyle(fontSize: 15,color: Colors.grey),),

                          Row(children: [Icon(Icons.star,color: Colors.orangeAccent,),
                            Icon(Icons.star,color: Colors.orangeAccent,),Icon(Icons.star,color: Colors.orangeAccent,),
                            Icon(Icons.star,color: Colors.orangeAccent,)
                            ,Icon(Icons.star_half,color: Colors.orangeAccent,)],)
                        ],)),)
                 ]),),)),
            SingleChildScrollView(child:
            Container(child: Padding(padding: EdgeInsets.all(25),child: Column(mainAxisAlignment: MainAxisAlignment.start,
                children:[
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(onTap: (){setState((){bed=4;});},child:
                    Container(width: size.width*0.15,decoration: BoxDecoration(color:bed==4?Color.fromARGB(255,14,60,110):Colors.white,borderRadius: BorderRadius.circular(5),border: Border.all(color:Color.fromARGB(255,14,60,110))),
                    child:Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [Icon(Icons.bed,color:bed==4?Colors.white:Color.fromARGB(255,14,60,110)),Text(" 4",style: TextStyle(color:bed==4?Colors.white:Color.fromARGB(255,14,60,110),fontWeight: FontWeight.bold),)],),),),
                    SizedBox(width: size.width*0.03,),
                      GestureDetector(onTap: (){setState((){bed=3;});},child:
                      Container(width: size.width*0.15,decoration: BoxDecoration(color:bed==3?Color.fromARGB(255,14,60,110):Colors.white,borderRadius: BorderRadius.circular(5),border: Border.all(color:Color.fromARGB(255,14,60,110))),
                        child:Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [Icon(Icons.bed,color:bed==3?Colors.white:Color.fromARGB(255,14,60,110)),Text(" 3",style: TextStyle(color:bed==3?Colors.white:Color.fromARGB(255,14,60,110),fontWeight: FontWeight.bold),)],),),),
                      SizedBox(width: size.width*0.03,),
                      GestureDetector(onTap: (){setState((){bed=2;});},child:
                      Container(width: size.width*0.15,decoration: BoxDecoration(color:bed==2?Color.fromARGB(255,14,60,110):Colors.white,borderRadius: BorderRadius.circular(5),border: Border.all(color:Color.fromARGB(255,14,60,110))),
                        child:Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [Icon(Icons.bed,color:bed==2?Colors.white:Color.fromARGB(255,14,60,110)),Text(" 2",style: TextStyle(color:bed==2?Colors.white:Color.fromARGB(255,14,60,110),fontWeight: FontWeight.bold),)],),),),
                      SizedBox(width: size.width*0.03,),
                      GestureDetector(onTap: (){setState((){bed=1;});},child:
                      Container(width: size.width*0.15,decoration: BoxDecoration(color:bed==1?Color.fromARGB(255,14,60,110):Colors.white,borderRadius: BorderRadius.circular(5),border: Border.all(color:Color.fromARGB(255,14,60,110))),
                        child:Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [Icon(Icons.bed,color:bed==1?Colors.white:Color.fromARGB(255,14,60,110)),Text(" 1",style: TextStyle(color:bed==1?Colors.white:Color.fromARGB(255,14,60,110),fontWeight: FontWeight.bold),)],),),),
                      SizedBox(width: size.width*0.03,),
                    ],),
                  SizedBox(height: size.height*0.03,),
                  SizedBox(

                    height: 130,
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return
                              buildcard(index
                          );
                        },
                        separatorBuilder: (context, index) {
                          return const SizedBox(width: 20);
                        },
                        itemCount: 5),

                  ),
                  SizedBox(height: size.height*0.02,),
                  CirclePageIndicator(
                    itemCount: 5,
                    currentPageNotifier: _currentPageNotifier,
                    selectedDotColor:Color.fromARGB(255,14,60,110),
                    dotColor: Colors.grey,
                  ),
                  SizedBox(height: size.height*0.02,),
                  Row(
                    children: [
                      Text("GHKJ Enginnering College",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                      SizedBox(width: size.width*0.18,),
                      Container(width: size.width*0.14,height: size.height*0.03,
                        decoration: BoxDecoration(color:Colors.green,borderRadius: BorderRadius.circular(5)),
                        child:Row(children: [
                          Text(" 4.4",style: TextStyle(color: Colors.white,fontSize: 15),), Icon(Icons.star,color: Colors.white,)],),),


                    ],
                  ),
                  SizedBox(height: size.height*0.01,),
                  Row(
                    children: [
                      Icon(Icons.location_on_outlined,color: Color.fromARGB(255,14,60,110),),
                      Text("Lorem ipsum dolor sit ")
                    ],
                  ),
                  SizedBox(height: size.height*0.01,),
                  Text("Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet "
                      "Lorem ipsum dolor sit amet Lorem ipsum dolor sit et Lorem ipsum dolor sit amet,"
                      "Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet,",style: TextStyle(color: Colors.grey),),
                  SizedBox(height: size.height*0.02,),
                  Align(alignment: Alignment.topLeft,child:
                  Text("Facilities",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)),
                  SizedBox(height: size.height*0.02,),
                  Row(children: [
                    Container(width: size.width*0.1,child:Image.asset("assets/14.png"),),
                    SizedBox(width: size.width*0.02,)
                    ,Text("College in 400mtrs",style: TextStyle(fontWeight: FontWeight.bold),),
                  ],),
                  Row(children: [
                    Container(width: size.width*0.1,child:Image.asset("assets/15.png"),),
                    SizedBox(width: size.width*0.02,),
                    Text("Bathrooms: 2",style: TextStyle(fontWeight: FontWeight.bold),),
                  ],)


                ])))),

            Container(color: Colors.blue,),Container(color: Colors.grey,)
          ])
        ),
      ),

      ),
      );

  }
  Widget buildcard(index)=>
  GestureDetector(onTap: () {
  _currentPageNotifier.value = index;},child:

      Container(

      width: MediaQuery.of(context).size.width*0.36,
      child: ClipRRect(borderRadius: BorderRadius.circular(15),child:
      Image.asset(index==0?"assets/11.jpg":
      index==1?"assets/12.jpg":
      index==2?"assets/13.jpg":
      index==3?"assets/13.jpg":"assets/11.jpg",fit: BoxFit.fill,),
      )));

}
class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
class RetroSliderThumbShape extends SliderComponentShape {
  final double thumbRadius;

  const RetroSliderThumbShape({
    this.thumbRadius = 8.0,
  });

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size.fromRadius(thumbRadius);
  }

  @override
  void paint(
      PaintingContext context,
      Offset center, {
        required Animation<double> activationAnimation,
        required Animation<double> enableAnimation,
        required bool isDiscrete,
        required TextPainter labelPainter,
        required RenderBox parentBox,
        required SliderThemeData sliderTheme,
        required TextDirection textDirection,
        required double value,
        required double textScaleFactor,
        required Size sizeWithOverflow,

      }) {
    final Path path = Path();

    path.moveTo(center.dx, center.dy);
    path.lineTo(center.dx - 10, center.dy + 15);
    path.lineTo(center.dx + 10, center.dy + 15);
    path.close();
    context.canvas.drawPath(
        path,
        Paint()
          ..style = PaintingStyle.fill
          ..shader = ui.Gradient.linear(
            Offset.fromDirection(center.dx - 10, center.dy + 15),
            Offset.fromDirection(center.dx + 10, center.dy + 15),
            [

            Colors.white,
              Colors.grey.shade900,
            ],
          )
    ..strokeWidth = 2);

  }
}
