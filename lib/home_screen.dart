import 'package:api_get/user_info.dart';
import 'package:api_get/web_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'api_mode.dart';
import 'fetch_data.dart';

class HomeScreen extends StatefulWidget {
  String? userErpName, userAppName, codeInputName;
  HomeScreen({
    Key? key,
    required this.userErpName,
    required this.userAppName,
    required this.codeInputName,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: constraints.maxHeight,
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      FutureBuilder<Data?>(
                        future: getList(),
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            return Expanded(
                              child: ListView.builder(
                                itemCount: snapshot.data!.message.length,
                                itemBuilder: (context, snapsot) => Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: CircleAvatar(
                                        radius: 50,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          child: Image.asset("assets/logo.png"),
                                        ),
                                      ),
                                    ),

                                    const SizedBox(height: 10.0),
                                    //**** App  Name ******//
                                    Container(
                                      height: 80,
                                      width: 250,
                                      decoration: BoxDecoration(
                                        color: Colors.deepPurpleAccent[100],
                                        borderRadius: BorderRadius.circular(20),
                                        boxShadow: <BoxShadow>[
                                          BoxShadow(
                                            color: Colors.grey.shade400,
                                            spreadRadius: .3,
                                            blurRadius: 3,
                                            offset: const Offset(0, 5),
                                          ),
                                        ],
                                      ),
                                      child: Center(
                                        child: Text(
                                          widget.userAppName.toString(),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 10.0),

                                    //*** User- ERPApp- name(By User)
                                    Container(
                                      height: 80,
                                      width: 250,
                                      decoration: BoxDecoration(
                                        color: Colors.deepPurpleAccent[100],
                                        borderRadius: BorderRadius.circular(20),
                                        boxShadow: <BoxShadow>[
                                          BoxShadow(
                                            color: Colors.grey.shade400,
                                            spreadRadius: .3,
                                            blurRadius: 3,
                                            offset: const Offset(0, 5),
                                          ),
                                        ],
                                      ),
                                      child: Center(
                                        child: Text(
                                          widget.userErpName.toString(),
                                          style: const TextStyle(
                                              color: Colors.black),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 10.0),

                                    //**** App Link   ***//
                                    GestureDetector(
                                      onTap: () {
                                        Get.to(
                                          WebViewPage(
                                            url: snapshot
                                                .data!.message[snapsot].appLink,
                                          ),
                                        );
                                      },
                                      child: Container(
                                        height: 80,
                                        width: 250,
                                        decoration: BoxDecoration(
                                          color: Colors.deepPurpleAccent[100],
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          boxShadow: <BoxShadow>[
                                            BoxShadow(
                                              color: Colors.grey.shade400,
                                              spreadRadius: .3,
                                              blurRadius: 3,
                                              offset: const Offset(0, 5),
                                            ),
                                          ],
                                        ),
                                        child: Center(
                                          child: Text(
                                            snapshot
                                                .data!.message[snapsot].appLink,
                                            style:
                                                TextStyle(color: Colors.blue),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 10.0),

                                    //***App Version Name
                                    Container(
                                      height: 80,
                                      width: 250,
                                      decoration: BoxDecoration(
                                        color: Colors.deepPurpleAccent[100],
                                        borderRadius: BorderRadius.circular(20),
                                        boxShadow: <BoxShadow>[
                                          BoxShadow(
                                            color: Colors.grey.shade400,
                                            spreadRadius: .3,
                                            blurRadius: 3,
                                            offset: const Offset(0, 5),
                                          ),
                                        ],
                                      ),
                                      child: Center(
                                        child: Text(snapshot.data!
                                            .message[snapsot].appVersionName),
                                      ),
                                    ),
                                    const SizedBox(height: 10.0),
                                    Container(
                                      height: 80,
                                      width: 250,
                                      decoration: BoxDecoration(
                                        color: Colors.deepPurpleAccent[100],
                                        borderRadius: BorderRadius.circular(20),
                                        boxShadow: <BoxShadow>[
                                          BoxShadow(
                                            color: Colors.grey.shade400,
                                            spreadRadius: .3,
                                            blurRadius: 3,
                                            offset: const Offset(0, 5),
                                          ),
                                        ],
                                      ),
                                      child: Center(
                                        child: Text(snapshot.data!
                                            .message[snapsot].appVersionCode),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(50.0),
                                      child: SizedBox(
                                        height: 50,
                                        width: 200,
                                        child: ElevatedButton(
                                          style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all<
                                                        Color>(
                                                    Colors.deepPurpleAccent),
                                          ),
                                          onPressed: () {
                                            Get.back(
                                              result: const UserInfo(),
                                            );
                                          },
                                          child: const Text("Log Page"),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          } else if (!snapshot.hasData) {
                            return const CircularProgressIndicator(
                              color: Colors.deepPurpleAccent,
                            );
                          } else {
                            return const CircularProgressIndicator();
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<Data?> getList() async {
    Data? data = await getData();
    return data;
  }
  //
  // @override
  // void initState() {
  //   super.initState();
  //   print('name' + widget.appName.toString());
  // }
}
