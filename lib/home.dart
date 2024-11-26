


import 'package:flutter/material.dart';
import 'package:pro88/controler.dart';
import 'package:pro88/home2.dart';
import 'package:provider/provider.dart';

class SimpleCounter extends StatelessWidget {
  // int value = 0;

  @override
  Widget build(BuildContext context) {
      final controler=Provider.of<ControlerProvider>(context);
    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(
          onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => SimpleCounter2(),));
        },
        icon: Icon(Icons.add,size: 40,),
        )],
      ),
      body:ListView.builder(itemBuilder: (BuildContext context, int index) { 
        return Center(
          child: InkWell(onTap: () {
            controler.addToList(controler.prdact[index]);
          },child: Text('${controler.prdact[index]}')),
        );
       },
        itemCount: controler.prdact.length,
        )
  
    );
  }
}

// appBar: AppBar(
      //   title: Text('aaa'),
      //   backgroundColor: Colors.teal,
      // ),
      // body: Center(
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       IconButton(
      //         onPressed: decrement,
      //         icon: Icon(Icons.remove),
      //         color: Colors.red,
      //         iconSize: 32,
      //       ),
      //       SizedBox(width: 20),
      //       Text(
      //         '$value',
      //         style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      //       ),
      //       SizedBox(width: 20),
      //       IconButton(
      //         onPressed: increment,
      //         icon: Icon(Icons.add),
      //         color: Colors.green,
      //         iconSize: 32,
      //       ),
      //     ],
      //   ),
      // ),