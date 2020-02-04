import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: AnimatedIdea2(),
  );}
}

class AnimateContentExample extends StatefulWidget {
  @override
  _AnimateContentExampleState createState() => _AnimateContentExampleState();
}

class _AnimateContentExampleState extends State<AnimateContentExample> {
  double _animatedHeight = 100.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Expandanble TextBox"),),
      body: Center(child: Column(
        children: <Widget>[
          SizedBox(height: 50,),
          new Container(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                new GestureDetector(
                  onTap: ()=>setState((){
                    _animatedHeight!=0.0?_animatedHeight=0.0:_animatedHeight=70.0;}),
                  child:  new Container(
                  child: Center(child:Text("MIT, Manipal", style: new TextStyle( fontSize:18, color: Colors.white), ),),
                  
                  height: 50.0,
                    width: 200.0,
                    decoration: BoxDecoration(
                      borderRadius: new BorderRadius.only(topLeft: Radius.circular(5.0),topRight: Radius.circular(5.0),),
                      color: Colors.teal,
                    ),
                ),),
                new AnimatedContainer(duration: const Duration(milliseconds: 120),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text("Manipal Institute of Technology, Manipal",style: new TextStyle(fontSize:18, color: Colors.white),),),
                  height: _animatedHeight,
                  width: 200.0,
                  decoration: new BoxDecoration(
                    borderRadius: new BorderRadius.only(bottomLeft: Radius.circular(5), bottomRight: Radius.circular(5)),
                    color: Colors.teal,

                    ),
                ),

                
              ],
            ) ,
          )
        ],
      ),
      ),
    );
  }
}

class AnimatedIdea2 extends StatefulWidget {
                  // AnimatedIdea2({Key key}) : super(key: key);
                
                  @override
                  _AnimatedIdea2State createState() => _AnimatedIdea2State();
                }
                
                class _AnimatedIdea2State extends State<AnimatedIdea2> {

                  var _color= Colors.blue;
                  var _height= 70.0;
                  var _width= 150.0;
                  String _text="MIT Manipal";


                  increaseContainer(){
                    setState(() {
                      //_height= _height == 100.0? 200.0 : 100.0;
                      _width= _width == 150? 250:150;
                      _text= _text=="MIT Manipal"? "Manipal Institute Of Technology, Manipal":"MIT Manipal";
                    });
                  }


                  @override
                  Widget build(BuildContext context) {
                    return  Scaffold(
                      appBar: AppBar(title: Text("Expandanble TextBox"),),
                      body:Column(
                      children: <Widget>[
                        SizedBox(height: 50,),
                        
                        Center(
                          child:Padding(
                          padding: EdgeInsets.all(10),
                          child:AnimatedContainer(
                          duration: Duration(seconds: 1),
                          decoration: BoxDecoration(
                            borderRadius: new BorderRadius.circular(10),color: _color,),
                          curve: Curves.easeInOut,
                          
                          height: _height,
                          width: _width,
                          child:Center(
                            child:Padding(
                            padding: EdgeInsets.all(10),
                              child:Text(_text,
                                    style: new TextStyle(fontSize: 20,color: Colors.white)
                           ),
                          ),),),
                    ),),
                    OutlineButton(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                      
                      child:Text("Expand", 
                      
                      //style: new TextStyle(color: Colors.white),
                      ),
                      onPressed: (){
                        increaseContainer();
                      }
                      ),

                      ],
                    ),);
                  }
                }
