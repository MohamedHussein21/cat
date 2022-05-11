import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 1'),
      ),
      body: Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Container(width: 200,
                height: 200,
                color: Colors.red,
                child: const Text('Cat ', textAlign: TextAlign.center,),),
              Container(width: 50,
                height: 50,
                color: Colors.yellow,
                child: const Text('Cat ', textAlign: TextAlign.center,),),

            ],
          ),
          TextButton(onPressed: (){
            Navigator.pushNamed(context, 'second');
          }, child: Text('Go To onather Screen'))
        ],
      ),
      drawerScrimColor: Colors.red.withOpacity(0.5),
      drawer: Drawer(
        backgroundColor: Colors.teal,
        child: ListView(
          children: [
            ListTile(
              onTap: () {},
              title: Text('Go Tpo another Screen'),
              subtitle: Text('Cat'),
              trailing: Icon(Icons.add),
              leading: Icon(Icons.person),
              selected: true,
            ),
            ListTile(
              onTap: () {},
              title: Text('Go Tpo another Screen'),
              subtitle: Text('Cat'),
              tileColor: Colors.green,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(50)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
