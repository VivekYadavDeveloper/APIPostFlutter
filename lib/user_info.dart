import 'package:api_get/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserInfo extends StatefulWidget {
  const UserInfo({Key? key}) : super(key: key);

  @override
  State<UserInfo> createState() => _UserInfoState();
}

class _UserInfoState extends State<UserInfo> {
  // final userKeyInput = TextEditingController();
  final userInput = TextEditingController();
  final codeInput = TextEditingController();
  final userERPInput = TextEditingController();
  // final userPswrd = TextEditingController();

  bool _obscure = true;

  late String userErpName;
  late String userAppName;
  late String codeInputName;
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();

    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent[100],
      body: SafeArea(
        child: Container(
          height: double.maxFinite,
          width: double.infinity,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 50,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset("assets/logo.png"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RichText(
                    text: const TextSpan(
                      text: "Welcome To",
                      style: TextStyle(fontSize: 30),
                      children: <TextSpan>[
                        TextSpan(
                          text: " Fiestup",
                          style: TextStyle(
                            color: Colors.tealAccent,
                            fontSize: 22,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                //**** Form Field ****//
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: <Widget>[
                        //** Key Enter**//
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            enabled: false,
                            initialValue: "key_pearl_06\$\$12\$\$2021",

                            validator: (Currentvalue) {
                              var nonNullValue = Currentvalue ?? "";
                              if (nonNullValue.isEmpty) {
                                return "Filling The Place Is Required*";
                              }
                              return null;
                            },
                            keyboardType: TextInputType.visiblePassword,
                            obscureText: _obscure,
                            autofocus: false,
                            // controller: userKeyInput,
                            decoration: InputDecoration(
                              label: Text("Key"),
                              labelStyle: TextStyle(
                                color: Colors.teal[100],
                              ),
                              // suffixIcon: IconButton(
                              //   onPressed: () {
                              //     setState(() {
                              //       _obscure = _obscure;
                              //     });
                              //   },
                              //   icon: Icon(
                              //     _obscure
                              //         ? Icons.visibility
                              //         : Icons.visibility_off_rounded,
                              //   ),
                              // ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              helperText: "Key Here*",
                              hintText: " Key Enter Here..",
                            ),
                          ),
                        ),

                        //**** Code Name**** //

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            obscureText: _obscure,
                            initialValue: "code_pearl_06\$\$12\$\$2021",
                            validator: (CodeCurrentvalue) {
                              var CodeNonNullValue = CodeCurrentvalue ?? "";
                              if (CodeNonNullValue.isEmpty) {
                                return "Filling The Place Is Required*";
                              }
                              return null;
                            },
                            autofocus: false,
                            enabled: false,
                            // controller: codeInput,
                            decoration: InputDecoration(
                              label: Text("Code"),
                              labelStyle: TextStyle(
                                color: Colors.teal[100],
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    const BorderSide(color: Colors.white),
                              ),
                              helperText: "Code*",
                              hintText: " Enter Here",
                            ),
                          ),
                        ),

                        //**** APP Name***//
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            validator: (appCurrentvalue) {
                              var appNonNullValue = appCurrentvalue ?? "";
                              if (appNonNullValue.isEmpty) {
                                return "Filling The Place Is Required*";
                              }
                              return null;
                            },
                            autofocus: false,
                            controller: userInput,
                            decoration: InputDecoration(
                              label: Text("App Name"),
                              labelStyle: TextStyle(
                                color: Colors.teal[100],
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    const BorderSide(color: Colors.white),
                              ),
                              helperText: "App Name*",
                              hintText: " Enter Here",
                            ),
                          ),
                        ),
                        //**** ERP Name***//
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            autofocus: false,
                            controller: userERPInput,
                            decoration: InputDecoration(
                              label: Text("ERP Name"),
                              labelStyle: TextStyle(
                                color: Colors.teal[100],
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    const BorderSide(color: Colors.white),
                              ),
                              helperText: "ERP Name*",
                              hintText: " Enter Here",
                            ),
                          ),
                        ),

                        //***Password ***/
                        // Padding(
                        //   padding: const EdgeInsets.all(8.0),
                        //   child: TextFormField(
                        //     keyboardType: TextInputType.visiblePassword,
                        //     obscureText: _obscure,
                        //     autofocus: false,
                        //     controller: userPswrd,
                        //     decoration: InputDecoration(
                        //       suffixIcon: IconButton(
                        //         onPressed: () {
                        //           setState(() {
                        //             _obscure = !_obscure;
                        //           });
                        //         },
                        //         icon: Icon(
                        //           _obscure
                        //               ? Icons.visibility
                        //               : Icons.visibility_off_rounded,
                        //         ),
                        //       ),
                        //       focusedBorder: OutlineInputBorder(
                        //         borderRadius: BorderRadius.circular(10),
                        //         borderSide: BorderSide(color: Colors.white),
                        //       ),
                        //       helperText: "Password*",
                        //       hintText: " Password Enter Here..",
                        //     ),
                        //   ),
                        // ),
                        SizedBox(
                          height: 40,
                          width: 150,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.teal.shade100),
                            ),
                            onPressed: () {
                              //*** If the User Section Is Empty Then....//
                              if (userInput.text
                                      .isEmpty // || codeInput.text.isEmpty // ||userPswrd.text.isEmpty
                                  ) {
                                const snackBar = SnackBar(
                                  content:
                                      Text('Please fill the required fields'),
                                );

                                ScaffoldMessenger.of(context)
                                    .showSnackBar(snackBar);
                              } else {
                                Get.to(
                                  HomeScreen(
                                    userAppName: userInput.text,
                                    userErpName: userERPInput.text,
                                    codeInputName: codeInput.text,
                                  ),
                                );
                              }
                            },
                            child: const Text("Process"),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
