import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Transform.translate(
                offset: Offset(150,0),
                child: Container(
                    height: MediaQuery.of(context).size.height/1.5,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/nature.jpg"),
                        fit: BoxFit.fitWidth,
                      ),
                    )
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back_ios,
                        color: Colors.white,
                      )
                  ),
                  SizedBox(
                    height: 150,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text("Log in",style: TextStyle(color: Colors.white,fontSize:40),),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      padding: EdgeInsets.all(20.0),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.withOpacity(0.4)
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 40,
                                backgroundColor: Colors.transparent,
                                backgroundImage: AssetImage('assets/hagar.jpg'),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width /40,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Hagar Aboagye Serwaa",
                                    style: TextStyle(color: Colors.white,fontSize: 15),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text("adwoa3030hagar@gmail.com",
                                      style: TextStyle(color: Colors.white.withOpacity(0.4),fontSize: 15)
                                  )
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                            decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(10.0)
                            ),
                            child: TextField(
                              cursorColor: Colors.black,
                              obscureText: true,
                              style: TextStyle(color: Colors.black,fontSize: 15),
                              decoration: InputDecoration(
                                  label: Text('Password'),
                                  labelStyle: TextStyle(fontSize: 15,color: Colors.black.withOpacity(0.4)),
                                  border: InputBorder.none,
                                  suffixText: 'View',
                                  suffixStyle: TextStyle(color: Colors.black)
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 18,
                          ),
                          Container(
                            padding: EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                                color: Color(0xFF02c38e),
                                borderRadius: BorderRadius.circular(10.0)
                            ),
                            child: Center(child: Text("Continue",
                              style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold),)),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Text("Forgot your password?",
                            style: TextStyle(color: Color(0xFF02c38e),fontSize: 17,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),

    );
  }
}
