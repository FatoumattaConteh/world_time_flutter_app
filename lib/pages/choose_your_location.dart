import 'package:flutter/material.dart';

class ChooseYourLocation extends StatefulWidget {
  const ChooseYourLocation({Key? key}) : super(key: key);

  @override
  _ChooseYourLocationState createState() => _ChooseYourLocationState();
}

class _ChooseYourLocationState extends State<ChooseYourLocation> {



  @override
  Widget build(BuildContext context) {
    print('build Function run');
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose a Location'),
        centerTitle: true,
        elevation: 0,
      ),
     /* body:ElevatedButton(
        onPressed: (){
          setState(() {
            counter+=1;
          });
        }, child: Text('counter is $counter'),
      )*/
    );
  }
}
