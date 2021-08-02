import 'package:flutter/material.dart';
main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
home: Counter(),


  ),
  );


}
class Counter extends StatefulWidget {
  

  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return(Scaffold(
  appBar: AppBar(
    backgroundColor: Colors.cyan,
    centerTitle: true,
    title: Text("My Counter App", style: TextStyle(color: Colors.pink, fontSize:30, ) ),

  ),
  floatingActionButton: FloatingActionButton(
    onPressed:(){
      setState(() {
              counter++;
            });
    },
     child: Icon(Icons.add),
    ),
    body: Center(
      child: Column(
        mainAxisAlignment:MainAxisAlignment.center, 
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("click the button to see image"),
          Text(counter.toString()),
        ],),
    ),
));

      
    
  }
}