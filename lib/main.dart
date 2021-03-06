import 'package:flutter/material.dart';
import 'package:world_time_flutter_app/pages/choose_your_location.dart';
import 'package:world_time_flutter_app/pages/home.dart';
import 'package:world_time_flutter_app/pages/loading.dart';


void main() =>
  runApp(MaterialApp(
    initialRoute: '/',
    routes:{
      '/':(context)=>Loading(),
      '/home':(context)=>Home(),
      '/location':(context)=>ChooseYourLocation(),
    },
  ));


