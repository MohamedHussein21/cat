import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key,required this.title}) : super(key: key);
  final String title;


  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(title),

      ),
      body: Column(
        children:  [
          const CircleAvatar(
            radius: 60,
            backgroundColor: Colors.green,
            child: Icon(Icons.favorite),
            foregroundColor: Colors.green,
            backgroundImage: AssetImage('assets/images/person.png'),
          ),

          Row(
            children: [
              Text('data'),
              SizedBox(width: width*0.5,),
              Text('data'),
            ],
          ),
          SizedBox(height: height/2,),
          Text('data'),
          Text('data'),
        ],
      ),
    );
  }
}
