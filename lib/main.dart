// @dart=2.9
import 'package:custom_line_indicator_bottom_navbar/custom_line_indicator_bottom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:internship/screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({key, });


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  AnimationController  animationController;
  final page=[
    Home(),
    College(),
    College(),
    College(),

  ];
  int index1=0;
  final controller=TextEditingController();
  bool visible1=false;
  int _selectedIndex=0;
  void _onItemTapped(int index) {
    setState(() {
      index1 = index;
    });
  }

  @override
  Widget build(BuildContext context) {
   Size size= MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: CustomLineIndicatorBottomNavbar(
        selectedColor: Colors.white,
        unSelectedColor: Colors.grey,
        backgroundColor: Color.fromARGB(255,14,60,110),
        currentIndex: index1,
        onTap: (index) {
          setState(() {
           index1 = index;
          });
        },
        selectedFontSize: 15,
        selectedIconSize: 24,
        unselectedFontSize: 15,
        unselectedIconSize: 24,
        enableLineIndicator: true,
        lineIndicatorWidth: 3,
        indicatorType: IndicatorType.Bottom,

        customBottomBarItems: [
          CustomBottomBarItems(
            label: 'Search',
            icon: Icons.home,
          ),
          CustomBottomBarItems(
            label: 'Saved',
            icon: Icons.bookmark,
          ),
          CustomBottomBarItems(
              label: 'Saved', icon: Icons.calendar_today_outlined),
          CustomBottomBarItems(
            label: 'Account',
            icon: Icons.account_circle_rounded,
          ),
        ],
      ),
      appBar: AppBar(

        backgroundColor: Color.fromARGB(255,14,60,110),
        shape:RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25)
        ),



        bottom: PreferredSize(
            child:Container(child:
                Padding(padding: EdgeInsets.only(bottom: 15,left: 20),child:
                    Column(
                      children: [
                        Row(
                          children: [
                            Expanded(child:
                            Column(
                              children: [Align(alignment: Alignment.topLeft,child:
                               Text("Find Your Own Way",style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 20

                                ),)),Align(alignment: Alignment.topLeft,child:
                            Text("Search in 600 colleges around!",style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16
                                ,)),),
                              ],
                            )),
                            IconButton(onPressed: (){}, icon:Icon(Icons.notification_add,color: Colors.white))

                          ],
                        ),
        SizedBox(
          height: size.height*0.02,
        ),
        Row(
            children: [
        SizedBox(width: size.width*0.7,
              height: size.height*0.07,

              child:
            TextFormField(
              controller: controller,


                decoration: new InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color:Color.fromARGB(255,14,60,110)),),

                    contentPadding:
                    EdgeInsets.only(top: 10,bottom: 10),prefixIcon: Icon(Icons.search),
                  filled: true,
                  fillColor: Colors.white,

               hintText: 'Search for colleges,school..',




              ),
            )),
SizedBox(
  width: size.width*0.05,
),
              SizedBox(
                  width: size.width*0.15,
                  height: size.height*0.07,
                  child:
                  ElevatedButton(
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                        ),
                        backgroundColor:  MaterialStateProperty.all<Color>(Colors.white)
                    ),
                    onPressed: (){}, child:Icon(Icons.keyboard_voice,color: Color.fromARGB(255,14,60,110),size: 25),
                  )),
        ])]),))
            , preferredSize:Size.fromHeight(90)),
      ),

      body:page[index1]
    );
  }
}

class Home extends StatefulWidget {
  const Home({key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedvalue1=0;
  bool visible=true;

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return visible==true?
      Container(margin: EdgeInsets.all(20),child:
      Column(
      children: [Expanded(child:
        GestureDetector(onTap: (){
          setState((){
            visible= bottom(visible);
          });
        },
            child:
        Card(shadowColor: Colors.grey,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          child:Image.asset("assets/1.png",fit:BoxFit.fill),
        )),),
    Expanded(child:
    GestureDetector(onTap: (){
      setState((){
        visible= bottom(visible);
      });
     },
        child:
        Card( shadowColor: Colors.grey,shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),),
          child:Image.asset("assets/2.png",fit:BoxFit.fill),
        ))),
    Expanded(child:
    GestureDetector(onTap: ()=>bottom(visible),
        child:
        Card(shadowColor: Colors.grey,shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),),
          child:Image.asset("assets/3.png",fit:BoxFit.fill),
        ))),

      ],
      )):Stack( children: [Align(alignment: Alignment.topCenter,child:
      Card(

          shadowColor: Colors.grey,shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),),
          child:Container( height: size.height*0.33,
              width: size.width*0.85,child:
              Column(

                children: [
                  Container(
                    height: size.height*0.15,
                    width: size.width*0.85,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover, image:AssetImage("assets/iit.jpg")),
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15)),
                      color: Colors.redAccent,
                    ),
                  ) ,   Container(margin: EdgeInsets.all(8),
                    child: Column(children: [
                      Row(mainAxisAlignment: MainAxisAlignment.start,
                        children: [

                          Expanded(child: Column(
                            children: [
                              Align(alignment: Alignment.topLeft,child:
                              Text("GHJK Engineering College",style: TextStyle(fontWeight: FontWeight.bold,),),),
                              SizedBox(height: size.height*0.01,),
                              Text("Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet,",
                                style: TextStyle(color: Colors.grey,fontSize: 12,letterSpacing: 1),
                              )
                            ],
                          )),
                          Column(crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                decoration:BoxDecoration(borderRadius: BorderRadius.circular(6),color: Colors.green) ,child:Row(children: [Text("  4.4 ",style: TextStyle(color: Colors.white,fontSize: 13),)
                                ,Icon(Icons.star,color: Colors.white,size: 20,)],),width: size.width*0.15,),
                              SizedBox(width: size.width*0.28,
                                  child:
                                  ElevatedButton(onPressed: (){
                                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>screen()));
                                  }, child: Text("Apply Now",style: TextStyle(color: Colors.white),),
                                      style: ElevatedButton.styleFrom(primary:  Color.fromARGB(255,14,60,110),
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)))))],
                          )
                        ],
                      ),SizedBox(width:size.width*0.78,child:
                      Divider(color: Colors.grey,thickness: 2))
                      ,Row(
                        children: [
                          Image.asset("assets/4.png",scale: 4,),
                          Text("  More than 1000+ students placed      ",style:TextStyle(color: Colors.grey,fontSize: 12),),
                          Icon(Icons.remove_red_eye_outlined,color: Colors.grey,size: 22,),
                          Text(" 468+",style:TextStyle(color: Colors.grey,fontSize: 12))
                        ],
                      )
                    ],),)

                  , ],
              ))
      ),),

      Positioned(left: 20,top: 10,
        child:ElevatedButton(style: ElevatedButton.styleFrom(shape: CircleBorder(),primary: Colors.white),onPressed:(){}, child:Icon(Icons.share_outlined,color: Colors.black,),),
      ), Positioned(right: 20,top: 10,
        child:ElevatedButton(style: ElevatedButton.styleFrom(shape: CircleBorder(),primary: Colors.white),onPressed:(){}, child:Icon(Icons.bookmark_border,color: Colors.black,),),
      )]);
  }

   bool bottom(bool a){
    visible=a;
    showModalBottomSheet(
        useRootNavigator: true,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25)
        ),
        context: context, builder: (context)=>StatefulBuilder(
        builder: (context, StateSetter setModalState)
    {
      return Container(
          height: MediaQuery.of(context).size.height * 0.5,
          margin: EdgeInsets.all(15),
          child: Column(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [Text("  Sort By", style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                ),),
                  SizedBox(width: MediaQuery.of(context).size.width*0.55,),

                  IconButton(onPressed: () => Navigator.pop(context),
                      icon: Icon(Icons.close))
                ],
              ), SizedBox(width: MediaQuery
                  .of(context)
                  .size
                  .width * 0.85,
                child: Divider(
                  thickness: 2,
                ),),
              ListTile(title: Text("Bachelor of Technolgy",style: TextStyle(fontWeight: FontWeight.bold),),
                  leading:Container(width: MediaQuery.of(context).size.width*0.09,
                      height: MediaQuery.of(context).size.width*0.09
                      ,decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/5.png",),fit: BoxFit.fill))),
                  trailing: Radio(fillColor: MaterialStateProperty.all<Color>(Color.fromARGB(255,14,60,110)),
                      value: 0, groupValue: selectedvalue1, onChanged: (value) {
                    setState(() {
                      selectedvalue1 = 0;
                   visible=!visible;
                    });
                    print("asdf");
                    print(a);
                  })),
              ListTile(title: Text("Bachelor of Architecture",style: TextStyle(fontWeight: FontWeight.bold),),
                  leading:Container(width: MediaQuery.of(context).size.width*0.09,
                      height: MediaQuery.of(context).size.width*0.09
                      ,decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/6.png",),fit: BoxFit.fill))),
                  trailing: Radio(fillColor: MaterialStateProperty.all<Color>(Color.fromARGB(255,14,60,110)),
                      value: 1, groupValue: selectedvalue1, onChanged: (value) {
                    setState(() {
                      selectedvalue1 = 1;
                      visible=!visible;
                    });
                  })),
              ListTile(title: Text("Pharmacy",style: TextStyle(fontWeight: FontWeight.bold),),
                  leading:Container(width: MediaQuery.of(context).size.width*0.09,
                      height: MediaQuery.of(context).size.width*0.09
                      ,decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/7.png",),fit: BoxFit.fill))),
                  trailing: Radio(fillColor: MaterialStateProperty.all<Color>(Color.fromARGB(255,14,60,110)),
                      value: 2, groupValue: selectedvalue1, onChanged: (value) {
                    setState(() {
                      selectedvalue1 = 2;
                      visible=!visible;
                    });
                  })),
              ListTile(title: Text("Law",style: TextStyle(fontWeight: FontWeight.bold),),
                  leading:Container(width: MediaQuery.of(context).size.width*0.09,
                      height: MediaQuery.of(context).size.width*0.09
                      ,decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/8.png",),fit: BoxFit.fill))),
                  trailing: Radio(fillColor: MaterialStateProperty.all<Color>(Color.fromARGB(255,14,60,110)),
                      value: 3, groupValue: selectedvalue1, onChanged: (value) {
                    setState(() {
                      selectedvalue1 = 3;
                      visible=!visible;
                    });
                  })),
              ListTile(title: Text("Mangement",style: TextStyle(fontWeight: FontWeight.bold),),
                  leading:Container(width: MediaQuery.of(context).size.width*0.09,
                      height: MediaQuery.of(context).size.width*0.09
                      ,decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/9.png",),fit: BoxFit.fill))),
                  trailing: Radio(fillColor: MaterialStateProperty.all<Color>(Color.fromARGB(255,14,60,110)),value: 4, groupValue: selectedvalue1, onChanged: (value) {
                    setState(() {
                      selectedvalue1 = 4;
                      visible=!visible;
                    });
                  })),
            ],
          ),
        );

    }
    ));

    return visible;
}
  }
class College extends StatefulWidget {
  const College({Key? key}) : super(key: key);

  @override
  State<College> createState() => _CollegeState();
}

class _CollegeState extends State<College> {

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
   return Scaffold();
  }
}

