import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {


  void getTime() async{
    //make the request
    Response response=await get(Uri.parse('https://worldtimeapi.org/api/timezone/America/Argentina/Salta'));
    Map data=jsonDecode(response.body);
    //print(data);

    //get properties from data
    String datetime=data['datetime'];
    String offset=data['utc_offset'].substring(0, 3);
    //print(datetime);
    //print(offset);

    //create DateTime object

    DateTime now=DateTime.parse(datetime);
    print(now);




    //Getting a http data
  /*Future <void> getData() async{
    final response = await get(Uri.parse('jsonplaceholder.typicode.com/todos/1'));
    List data =jsonDecode(response.body);
    print(data);*/

  }

//int counter=0; used to demonstrate stateful lifecycle.

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getTime();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Loading Screen'),
    );
  }
}
