import 'package:flutter/material.dart';

void main() {
  runApp(MyHomePage());
}


class MyHomePage extends StatefulWidget{
    @override
  MyHomePageState createState() {
    return MyHomePageState();
  }
}

//root widget
//cannot directly used showDialog in root widget
class MyHomePageState extends State<MyHomePage>{

  var key = 0;


  Widget build(BuildContext context){  

    print("Build Method");

    return MaterialApp(
      home: Scaffold(  
        appBar: AppBar(title: Text("My App"),),
        body: MyHome()


        // body: Container(
        //   child: OutlinedButton(
        //     onPressed: (){
        //       showDialog(
        // context:   context,
        //  builder: (BuildContext con){
        //    return AlertDialog(
        //      title: Text("Title"),
        //    content: Text("Hello Content"),
        //    actions: [
        //      OutlinedButton( 
        //        onPressed: (){

        //        },
        //        child: Text("Buton 1")
        //      )
        //    ]
        //    );
        //  });

        //        },
        //     child: Text("Click")


        //   )
        // )


      ),
    );
  }
}

//create another widget
class MyHome extends StatelessWidget{
  Widget build(BuildContext context){
    return Container(child: 
    OutlinedButton(    
      onPressed: (){
        showDialog(
        context:   context,
         builder: (BuildContext con){
           return AlertDialog(
             title: Text("Title"),
           content: Text("Hello Content"),
           actions: [
             OutlinedButton( 
               onPressed: (){

               },
               child: Text("Buton 1")
             )
           ]
           );
         });

      },
      child: Text("Click"),
    ),);
  }
}


