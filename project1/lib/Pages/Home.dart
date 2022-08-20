import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  List<String> categories = ["Food", "Electronics", "Groceries", "Dress"];
  List<String> name = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffE5E5E5),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('HELLO KHUKAN',
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.w600)),
                  Text(
                    "Let's get something?",
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 35),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          height: 115,
                          width: 285,
                          decoration: BoxDecoration(
                            color: Color(0xffF46D38),
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '40% Off During\nCovid 19',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                                Align(
                                    alignment: Alignment.bottomRight,
                                    child: Image.asset(
                                      'asset/apple.png',
                                      height: 45,
                                    ))
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 20),
                        Container(
                          height: 115,
                          width: 285,
                          decoration: BoxDecoration(
                            color: Color(0xff3861F4),
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '40% Off During\nCovid 19',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                                Align(
                                    alignment: Alignment.bottomRight,
                                    child: Image.asset('asset/apple.png',
                                        height: 48))
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Top Categories',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600)),
                      TextButton(
                          onPressed: () {},
                          child: Text('view all',
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w600)))
                    ],
                  ),
                  Container(
                    height: 40,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: categories.length,
                        itemBuilder: (_, index) {
                          return Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Center(
                              child: Container(
                                  height: 30,
                                  decoration: BoxDecoration(
                                      color: Color(0xffC4C4C4),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15))),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, right: 20, top: 5),
                                    child: Text(categories[index]),
                                  )),
                            ),
                          );
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      height: 800,
                      //color: Colors.amber,
                      child: GridView.builder(
                        // shrinkWrap: true,
                        // primary: true,
                        physics: NeverScrollableScrollPhysics(),
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
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
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
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
