


import 'package:flutter/material.dart';
import 'package:pro88/controler.dart';
import 'package:provider/provider.dart';

class SimpleCounter2 extends StatelessWidget {
  // int value = 0;

  @override
  Widget build(BuildContext context) {
      final controler=Provider.of<ControlerProvider>(context);
    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(
          onPressed: () {
          
        },
        icon: Icon(Icons.add)
        )],
      ),
      body:ListView.builder(itemBuilder: (BuildContext context, int index) { 
        return InkWell(onTap: () {
          // controler.addToList(controler.prdact1[index]);
        },child: Text('${controler.prdact1[index]}'));
       },
        itemCount: controler.prdact1.length,
        )
  
    );
  }
}
