import 'dart:ui';

import 'package:flutter/material.dart';

class Myadd extends StatelessWidget {
  const Myadd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'My Add',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          bottom: TabBar(
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.grey,
            tabs: [
              Tab(
                icon: Icon(Icons.shop_outlined),
                text: 'My Ads',
              ),
              Tab(
              icon: Icon(Icons.favorite_border_outlined),
                text: 'My Favourites',
              )
            ],
          ),
        ),
        body: TabBarView(
          children:[
Container(color: Colors.black,),
Container(color: Colors.red,)
          ])
        ));
      
  
  }
}
