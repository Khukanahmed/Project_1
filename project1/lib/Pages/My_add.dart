import 'dart:ui';

import 'package:flutter/material.dart';

class Myadd extends StatelessWidget {
  const Myadd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            backgroundColor: Color(0xffE5E5E5),
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
            body: TabBarView(children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Expanded(
                    // height: 520,
                    //color: Colors.amber,
                    child: GridView.builder(
                        gridDelegate:
                            SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 20,
                          childAspectRatio: 0.65,
                          mainAxisSpacing: 15,
                        ),
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(top: 50),
                            child: Container(
                              height: 80,
                              //width: 100,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(20))),
                              child:
                                  Stack(clipBehavior: Clip.none, children: [
                                Positioned(
                                  top: -40,
                                  right: 25,
                                  child: Image.asset(
                                    'asset/image.png',
                                    height: 120,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 60),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 10, horizontal: 20),
                                        child: Text(
                                          "Apple Watch",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 22),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20),
                                        child: Text(
                                          "Series 6.Red",
                                          style: TextStyle(fontSize: 16),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 20, top: 20),
                                        child: Text(
                                          "\$ 359",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.blue),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ]),
                            ),
                          );
                        }),
                  ),
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Card(
                        child: ListTile(
                      title: Text(
                        "     Apple",
                        style: TextStyle(fontSize: 20),
                      ),
                      subtitle: Text(
                        "      Series 6 . Red",
                        style: TextStyle(fontSize: 15),
                      ),
                      leading: Image.asset("asset/apple.png"),
                      trailing: Text('\$ 50'),
                    )),
                    Card(
                        child: ListTile(
                      title: Text(
                        "     Apple",
                        style: TextStyle(fontSize: 20),
                      ),
                      subtitle: Text(
                        "      Series 6 . Red",
                        style: TextStyle(fontSize: 15),
                      ),
                      leading: Image.asset("asset/apple.png"),
                      trailing: Text('\$ 50'),
                    )),
                    Card(
                        child: ListTile(
                       title: Text(
                        "     Apple",
                        style: TextStyle(fontSize: 20),
                      ),
                      subtitle: Text(
                        "      Series 6 . Red",
                        style: TextStyle(fontSize: 15),
                      ),
                      leading: Image.asset("asset/apple.png"),
                      trailing: Text('\$ 50'),
                    )),
                    Card(
                        child: ListTile(
                      title: Text(
                        "     Apple",
                        style: TextStyle(fontSize: 20),
                      ),
                      subtitle: Text(
                        "      Series 6 . Red",
                        style: TextStyle(fontSize: 15),
                      ),
                      leading: Image.asset("asset/apple.png"),
                      trailing: Text('\$ 50'),
                    )),
                  ],
                ),
              )
            ])));
  }
}
