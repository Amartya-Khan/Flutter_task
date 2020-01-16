import 'package:flutter/material.dart';
//import 'package:material_design_icons_flutter/icon_map.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
//import 'profile.dart';



void main() => runApp(ActivityScreen());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Activity Screen',
//       home: ActivityScreen(),
//     );
//   }
// }

class ActivityScreen extends StatefulWidget{
  @override
  _ActivityScreenState createState()=>_ActivityScreenState();
}


class _ActivityScreenState extends State<ActivityScreen> {

  int currentTab=0;

  PageOne one;
  PageTwo two;
  PageThree three;
  PageFour four;
  List<Widget> pages;
  Widget currentPage;

  @override
  void initState(){
    one=PageOne();
    two=PageTwo();
    three= PageThree();
    four=PageFour();
    pages=[one, two, three, four];
    currentPage= one;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      backgroundColor: Color(0xFFFAF0D1),
      body: currentPage,
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentTab,
          onTap: (int index){
            setState((){
              currentTab=index;
              currentPage=pages[index];
            }); 

          },
          items: [
          BottomNavigationBarItem(icon: Icon(MdiIcons.homeCircle, color: Colors.blue[800]), title: Text('home', style: TextStyle(color: Colors.blue[800])), ),
          BottomNavigationBarItem(icon: Icon(MdiIcons.faceProfileWoman, color: Colors.blue[800]),
          
          
          title: Text('profile', style: TextStyle(color: Colors.blue[800])),
          
    ),
        BottomNavigationBarItem(icon: Icon(MdiIcons.graph,color: Colors.blue[800] ),title: Text("Progress", style: TextStyle(color: Colors.blue[800])), ),
        BottomNavigationBarItem(icon: Icon(MdiIcons.puzzle,  color: Colors.blue[800]),title:Text("Trainings", style: TextStyle(color: Colors.blue[800]))),
    ],),
     ), );
  }

  
}
  class PageOne extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        child:Stack(
        children: <Widget>[
          Column(children: <Widget>[
            SizedBox(height: 80,),
              Expanded(
                child: Container(
                  //margin: EdgeInsets.only(top:30),
                  child: Column(children: <Widget>[
                    Center(
                      child: 
                        Text('Daily trainings', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.grey[800]), ),
                      ),
                      Center(
                      child: 
                      Padding(
                        padding: EdgeInsets.all(10),
                       child: Text('Keep training daily for better results',style: TextStyle(fontSize: 16, color: Colors.grey[800]),),
                      ),),
                    

                            SizedBox(height: 20,),
                             Container(
                                      child:Expanded(
                                        child: Stack(children: <Widget>[
                                          Container(
                                            width: double.infinity,
                                            margin:EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                                            padding: EdgeInsets.only(top:20, left:15),
                                            decoration: BoxDecoration(color: Colors.yellow[800].withOpacity(0.6),
                                            boxShadow: [BoxShadow(color: Colors.black12, offset: Offset(0,4),blurRadius: 4),
                                            BoxShadow(color: Colors.black12, offset:Offset(0,-6), blurRadius: 4),
                                            ],
                                            borderRadius: BorderRadius.circular(25),
                                            ),
                                            child:Column(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: <Widget>[
                                              Text('Attention and Focus', style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold, color: Colors.grey[800] ),),
                                              Text('Improve your Concentration!', style: TextStyle(fontSize: 14, color: Colors.grey[800]),),
                                              Row(children: <Widget>[
                                                Padding(
                                                  padding: EdgeInsets.all(3),
                                                  child: Container(
                                                    width: 40,
                                                  child:FloatingActionButton(
                                                    child: Icon(MdiIcons.check, color: Colors.white,), 
                                                    backgroundColor: Colors.orange[700],
                                                    elevation: 0,
                                                    onPressed: () => {},
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                  padding: EdgeInsets.all(3),
                                                  child: Container(
                                                    width: 40,
                                                  child:FloatingActionButton(
                                                    child: Icon(MdiIcons.check, color: Colors.white,), 
                                                    backgroundColor: Colors.orange[700],
                                                    elevation: 0,
                                                    onPressed: () => {},
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                  padding: EdgeInsets.all(3),
                                                  child: Container(
                                                    width: 40,
                                                  child:FloatingActionButton(
                                                    child: Icon(MdiIcons.check, color: Colors.white,), 
                                                    backgroundColor: Colors.orange[700],
                                                    elevation: 0,
                                                    onPressed: () => {},
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                  padding: EdgeInsets.all(3),
                                                  child: Container(
                                                    width: 40,
                                                  child:FloatingActionButton(
                                                    child: Icon(MdiIcons.check, color: Colors.white,), 
                                                    backgroundColor: Colors.orange[700],
                                                    elevation: 0,
                                                    onPressed: () => {},
                                                      ),
                                                    ),
                                                  ),
                                                  

                                              ],)
                                               
                                                  


                                            ],)
                                          ),
                                          Positioned(
                                            top:25,
                                            right: 30,
                                            child:Image.asset('assets/focus.png',
                                            width:100,
                                            ),
                                            )
                                        ],),)
                                    ),
                           
                                    Container(
                                      child:Expanded(
                                        child: Stack(children: <Widget>[
                                          Container(
                                            width: double.infinity,
                                            margin:EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                                            padding: EdgeInsets.only(top:20, left:15),
                                            decoration: BoxDecoration(color: Colors.blue[700].withOpacity(0.6),
                                            boxShadow: [BoxShadow(color: Colors.black12, offset: Offset(0,4),blurRadius: 4),
                                            BoxShadow(color: Colors.black12, offset:Offset(0,-6), blurRadius: 4),
                                            ],
                                            borderRadius: BorderRadius.circular(25),
                                            ),
                                            child:Column(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: <Widget>[
                                              Text('Math and Calculation', style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold, color: Colors.grey[800]),),
                                              Text('Make calculations easy!', style: TextStyle(fontSize: 14, color: Colors.grey[800]),),
                                              Row(children: <Widget>[
                                                Padding(
                                                  padding: EdgeInsets.all(3),
                                                  child: Container(
                                                    width: 40,
                                                  child:FloatingActionButton(
                                                    child: Icon(MdiIcons.check, color: Colors.white,), 
                                                    backgroundColor: Colors.blue[800],
                                                    elevation: 0,
                                                    onPressed: () => {},
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                  padding: EdgeInsets.all(3),
                                                  child: Container(
                                                    width: 40,
                                                  child:FloatingActionButton(
                                                    child: Icon(MdiIcons.check, color: Colors.white,), 
                                                    backgroundColor: Colors.blue[800],
                                                    
                                                    elevation: 0,
                                                    onPressed: () => {},
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                  padding: EdgeInsets.all(3),
                                                  child: Container(
                                                    width: 40,
                                                  child:FloatingActionButton(
                                                    splashColor: Colors.blue[800],
                                                    child: Icon(MdiIcons.play, color: Colors.blue[800],), 
                                                    backgroundColor: Colors.grey[200],
                                                    
                                                    elevation: 0,
                                                    onPressed: () => {},
                                                      ),
                                                    ),
                                                  ),
                                                   Padding(
                                                  padding: EdgeInsets.all(3),
                                                  child: Container(
                                                    width: 40,
                                                  child:FloatingActionButton(
                                                    child: Icon(MdiIcons.lock, color: Colors.grey[700],), 
                                                    backgroundColor: Colors.grey[400],
                                                    elevation: 0,
                                                    onPressed: null,
                                                      ),
                                                    ),
                                                  ),

                                              ],)
                                               
                                                  


                                            ],)
                                          ),
                                          Positioned(
                                            top:25,
                                            right: 30,
                                            child:Image.asset('assets/math.png',
                                            width:90,
                                            ),
                                            )
                                        ],),)
                                    ),
                 Container(
                                      child:Expanded(
                                        child: Stack(children: <Widget>[
                                          Container(
                                            width: double.infinity,
                                            margin:EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                                            padding: EdgeInsets.only(top:20, left:15),
                                            decoration: BoxDecoration(color: Colors.teal[600].withOpacity(0.6),
                                            boxShadow: [BoxShadow(color: Colors.black12, offset: Offset(0,4),blurRadius: 4),
                                            BoxShadow(color: Colors.black12, offset:Offset(0,-6), blurRadius: 4),
                                            ],
                                            borderRadius: BorderRadius.circular(25),
                                            ),
                                            child:Column(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: <Widget>[
                                              Text('Brain Boost', style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold, color: Colors.grey[800] ),),
                                              Text('Improve your abilities!', style: TextStyle(fontSize: 14, color: Colors.grey[800]),),
                                             Align(
                                  alignment: Alignment.bottomLeft,
                          child:Container(
                          width: 160,
                          margin:EdgeInsets.only(top:5),
                          child:RaisedButton(
                            color: Colors.teal[800],
                            splashColor: Colors.white,
                            onPressed: (){
                             

                            },
                            shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            
                            ),
                            child: Row(children: <Widget>[

                              Icon(MdiIcons.play, color: Colors.white,),
                              SizedBox(width: 3,),

                            Text(
                                "Start Training",
                                style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                //fontWeight: FontWeight.bold,
                                ),                    
                            ),
                          ],),
                          ),),),
                                               
                                                  


                                            ],)
                                          ),
                                          Positioned(
                                            top:25,
                                            right: 35,
                                            child:Image.asset('assets/brain2.png',
                                            width:100,
                                            ),
                                            )
                                        ],),)
                                    ),




                
                
                  ],
                  ),
              ),),
              Align(
                          child:Container(
                          height: 50,
                          margin:EdgeInsets.all(10),
                          child:RaisedButton(
                            color: Colors.blue[800].withOpacity(0.8),
                            splashColor: Colors.white,
                            onPressed: (){
                      

                            },
                            shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Center(
                              child: Text(
                                "Continue Training Daily",
                                style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                //fontWeight: FontWeight.bold,
                                ),                    
                            ),
                           ),
                          ),
                        ),),
              ],
                  ),
                    
        ],
    ),);
        
          //BottomNavigationBarItem()
          
  }
}















class PageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        child:Stack(
        children: <Widget>[
          Column(children: <Widget>[
            SizedBox(height: 100,),
            // Container(
            //   height: 200,
            //   child: Center(child: Text('Profile'),
            //   ),
            //   ),
              Container (
                height: 100,
                width: 100,
                child:CircleAvatar(backgroundImage: AssetImage('assets/profile.jpg'),),),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(top:30),
                  child: Column(children: <Widget>[
                    Center(
                      child: 
                        Text('Hi, Annie', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.grey[700]),)
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                          padding: EdgeInsets.symmetric(horizontal:5, vertical: 20),  
                          child: Container(
                            width: 100,
                            height: 100,
                            //margin: EdgeInsets.symmetric(horizontal: 12),
                             decoration: BoxDecoration(
                                color: Colors.yellow[800].withOpacity(0.4),
                                borderRadius: BorderRadius.circular(25),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.orange.withOpacity(.08),
                                    offset: Offset(0, 10),
                                    blurRadius: 10)
                                ],
                                ),
                                child:Column(children: <Widget>[
                                  SizedBox(height: 25,),
                                  Text("120m", style: TextStyle(color: Colors.grey[700], fontSize: 20, fontWeight: FontWeight.bold),),
                                  SizedBox(height: 3,),
                                  Text("Total Time", style: TextStyle(color: Colors.grey[900], fontSize: 12, fontWeight: FontWeight.w300),),
                                ],)
                          ),),

                          Padding(
                          padding: EdgeInsets.symmetric(horizontal:5, vertical: 20),  
                          child: Container(
                            width: 100,
                            height: 100,
                            //margin: EdgeInsets.symmetric(horizontal: 12),
                             decoration: BoxDecoration(
                                color: Colors.blue[800].withOpacity(0.4),
                                borderRadius: BorderRadius.circular(25),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.orange.withOpacity(.08),
                                    offset: Offset(0, 10),
                                    blurRadius: 30)
                                ]),
                                 child:Column(children: <Widget>[
                                  SizedBox(height: 25,),
                                  Text("10", style: TextStyle(color: Colors.grey[700], fontSize: 20, fontWeight: FontWeight.bold),),
                                  SizedBox(height: 3,),
                                  Text("Daily Trainings", style: TextStyle(color: Colors.grey[900], fontSize: 12, fontWeight: FontWeight.w300),),
                                ],)
                          ),),

                          Padding(
                          padding: EdgeInsets.symmetric(horizontal:5, vertical: 20),  
                          child: Container(
                            width: 100,
                            height: 100,
                            //margin: EdgeInsets.symmetric(horizontal: 12),
                             decoration: BoxDecoration(
                                color: Colors.teal[800].withOpacity(0.4),
                                borderRadius: BorderRadius.circular(25),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.orange.withOpacity(.08),
                                    offset: Offset(0, 10),
                                    blurRadius: 30)
                                ]),
                                child:Column(children: <Widget>[
                                  SizedBox(height: 25,),
                                  Text("12m", style: TextStyle(color: Colors.grey[700], fontSize: 20, fontWeight: FontWeight.bold),),
                                  SizedBox(height: 3,),
                                  Text("Average Time", style: TextStyle(color: Colors.grey[900], fontSize: 12, fontWeight: FontWeight.w300),),
                                ],)
                          ),),

                        ],),
                        // Container(height: 100,
                        // decoration: BoxDecoration(color: Colors.red),),
                        Expanded(child:ListView(children: <Widget>[
                          ListTile(
                              title:Text('Profile Information', style:TextStyle(color: Colors.grey[600], fontWeight: FontWeight.bold,)),
                              trailing: Icon(MdiIcons.chevronRight),
                            ),
                            ListTile(
                              title:Text('Notifications', style:TextStyle(color: Colors.grey[600], fontWeight: FontWeight.bold,)),
                              trailing: Icon(MdiIcons.chevronRight),
                            ),
                            ListTile(
                              title:Text('Settings', style:TextStyle(color: Colors.grey[600], fontWeight: FontWeight.bold,)),
                              trailing: Icon(MdiIcons.chevronRight),
                            ),
                            ListTile(
                            title:Text('Follow & Share', style:TextStyle(color: Colors.grey[600], fontWeight: FontWeight.bold,)),
                            trailing: Icon(MdiIcons.chevronRight),
                            ),
                            ListTile(
                            title:Text('Help & Support', style:TextStyle(color: Colors.grey[600], fontWeight: FontWeight.bold,)),
                            trailing: Icon(MdiIcons.chevronRight),
                            ),

                            SizedBox(height: 20,),

                            Container(
                          height: 50,
                          margin:EdgeInsets.symmetric(horizontal: 40),
                          child:RaisedButton(
                            color: Colors.blue[800].withOpacity(0.01),
                            splashColor: Colors.white,
                            onPressed: (){
                              

                            },
                            shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                            //side: BorderSide(color: Colors.red),
                            ),
                          // decoration: BoxDecoration(
                          //   borderRadius: BorderRadius.circular(50),
                          //   //color:Colors.teal[600],
                          // ),
                            child: Center(
                              child: Text(
                                "Sign out",
                                style: TextStyle(
                                color: Colors.blue[800].withOpacity(0.7),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                ),                    
                            ),
                           ),
                          ),
                        ),


                           ],
                          ),
                        ),

                  ],),),),
          ],),
          
          
        ],
        ),
        );
  }
}

class PageThree extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(height: 10,);
  }
}

class PageFour extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container (height: 10,);
  }
}
