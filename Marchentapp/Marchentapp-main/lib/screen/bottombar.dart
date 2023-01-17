import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:marchentapp/screen/manages.dart';
import 'package:marchentapp/screen/orders.dart';
import 'package:marchentapp/screen/product.dart';
import 'package:marchentapp/screen/profile.dart';
import 'package:marchentapp/widgets/textwidget.dart';

import 'homepsge.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int selectesindex = 0;
  final List<Map<String, dynamic>> _pages = [
    {'page': const HomeScreen(), 'title': 'HomeScreen'},
    {'page': const OrdersScreen(), 'title': 'OrdersScreen'},
    {'page': ProductScreen(), 'title': 'ProductScreen'},
    {'page': const ManagesScreen(), 'title': 'ManagesScreen'},
    {'page': const ProfileScreen(), 'title': 'ProductScreen'},
  ];
  void selectedpage(int index) {
    setState(() {
      selectesindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: _pages[selectesindex]['page'],
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(10),
          child: Card(
            elevation: 10,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: FittedBox(
                child: Row(
                  children: [
                    MaterialButton(
                      onPressed: () {
                        setState(() {
                          selectesindex = 0;
                        });
                      },
                      child: Column(
                        children: [
                          Icon(
                            selectesindex == 0
                                ? IconlyBold.home
                                : IconlyLight.home,
                            size: 30,
                            color: selectesindex == 0
                                ? Color(0xff38C0EE)
                                : Colors.grey,
                          ),
                          Textwidget(
                              text: 'Home',
                              color: selectesindex == 0
                                  ? Color(0xff38C0EE)
                                  : Colors.grey,
                              fs: 15)
                        ],
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {
                        setState(() {
                          selectesindex = 1;
                        });
                      },
                      child: Column(
                        children: [
                          // Icon(IconlyLight.addUser),
                          Icon(
                            selectesindex == 1
                                ? IconlyBold.document
                                : IconlyLight.document,
                            size: 30,
                            color: selectesindex == 1
                                ? Color(0xff38C0EE)
                                : Colors.grey,
                          ),
                          Textwidget(
                              text: 'Orders',
                              color: selectesindex == 1
                                  ? Color(0xff38C0EE)
                                  : Colors.grey,
                              fs: 15)
                        ],
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {
                        setState(() {
                          selectesindex = 2;
                        });
                      },
                      child: Column(
                        children: [
                          Icon(
                            selectesindex == 2
                                ? IconlyBold.category
                                : IconlyLight.category,
                            size: 30,
                            color: selectesindex == 2
                                ? Color(0xff38C0EE)
                                : Colors.grey,
                          ),
                          Textwidget(
                              text: 'Product',
                              color: selectesindex == 2
                                  ? Color(0xff38C0EE)
                                  : Colors.grey,
                              fs: 15)
                        ],
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {
                        setState(() {
                          selectesindex = 3;
                        });
                      },
                      child: Column(
                        children: [
                          Icon(
                            Icons.event_available,
                            size: 30,
                            color: selectesindex == 3
                                ? Color(0xff38C0EE)
                                : Colors.grey,
                          ),
                          Textwidget(
                              text: 'Manages',
                              color: selectesindex == 3
                                  ? Color(0xff38C0EE)
                                  : Colors.grey,
                              fs: 15)
                        ],
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {
                        setState(() {
                          selectesindex = 4;
                        });
                      },
                      child: Column(
                        children: [
                          Icon(
                            selectesindex == 4
                                ? IconlyBold.profile
                                : IconlyLight.profile,
                            size: 30,
                            color: selectesindex == 4
                                ? Color(0xff38C0EE)
                                : Colors.grey,
                          ),
                          Textwidget(
                              text: 'Profile',
                              color: selectesindex == 4
                                  ? Color(0xff38C0EE)
                                  : Colors.grey,
                              fs: 15)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        )

        // bottomNavigationBar: Padding(
        //   padding: const EdgeInsets.only(bottom: 10, left: 16, right: 16),
        //   child: BottomAppBar(
        //     shape: AutomaticNotchedShape(
        //         RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
        //     elevation: 10,
        //     child: Container(
        //       decoration: BoxDecoration(
        //           color: Colors.white, borderRadius: BorderRadius.circular(10)),
        //       padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        //       child: FittedBox(
        //         child: Row(
        //           children: [
        //             MaterialButton(
        //               onPressed: () {
        //                 setState(() {
        //                   selectesindex = 0;
        //                 });
        //               },
        //               child: Column(
        //                 children: [
        //                   Icon(
        //                     Icons.home,
        //                     size: 30,
        //                     color:
        //                         selectesindex == 0 ? Colors.blue : Colors.black,
        //                   ),
        //                   Textwidget(
        //                       text: 'Home',
        //                       color:
        //                           selectesindex == 0 ? Colors.blue : Colors.black,
        //                       fs: 18)
        //                 ],
        //               ),
        //             ),
        //             MaterialButton(
        //               onPressed: () {
        //                 setState(() {
        //                   selectesindex = 1;
        //                 });
        //               },
        //               child: Column(
        //                 children: [
        //                   Icon(
        //                     Icons.book,
        //                     size: 30,
        //                     color:
        //                         selectesindex == 1 ? Colors.blue : Colors.black,
        //                   ),
        //                   Textwidget(
        //                       text: 'Orders',
        //                       color:
        //                           selectesindex == 1 ? Colors.blue : Colors.black,
        //                       fs: 12)
        //                 ],
        //               ),
        //             ),
        //             MaterialButton(
        //               onPressed: () {
        //                 setState(() {
        //                   selectesindex = 2;
        //                 });
        //               },
        //               child: Column(
        //                 children: [
        //                   Icon(
        //                     Icons.category,
        //                     size: 30,
        //                     color:
        //                         selectesindex == 2 ? Colors.blue : Colors.black,
        //                   ),
        //                   Textwidget(
        //                       text: 'Product',
        //                       color:
        //                           selectesindex == 2 ? Colors.blue : Colors.black,
        //                       fs: 12)
        //                 ],
        //               ),
        //             ),
        //             MaterialButton(
        //               onPressed: () {
        //                 setState(() {
        //                   selectesindex = 3;
        //                 });
        //               },
        //               child: Column(
        //                 children: [
        //                   Icon(
        //                     Icons.manage_accounts,
        //                     size: 30,
        //                     color:
        //                         selectesindex == 3 ? Colors.blue : Colors.black,
        //                   ),
        //                   Textwidget(
        //                       text: 'Manages',
        //                       color:
        //                           selectesindex == 3 ? Colors.blue : Colors.black,
        //                       fs: 12)
        //                 ],
        //               ),
        //             ),
        //             MaterialButton(
        //               onPressed: () {
        //                 setState(() {
        //                   selectesindex = 4;
        //                 });
        //               },
        //               child: Column(
        //                 children: [
        //                   Icon(
        //                     Icons.person,
        //                     size: 30,
        //                     color:
        //                         selectesindex == 4 ? Colors.blue : Colors.black,
        //                   ),
        //                   Textwidget(
        //                       text: 'Profile',
        //                       color:
        //                           selectesindex == 4 ? Colors.blue : Colors.black,
        //                       fs: 12)
        //                 ],
        //               ),
        //             ),
        //           ],
        //         ),
        //       ),
        //     ),
        //   ),
        // ),
        );
  }
}
