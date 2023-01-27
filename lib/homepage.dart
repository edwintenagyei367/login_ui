import 'package:flutter/material.dart';
import './signup.dart';
import './login.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
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
                    onPressed: () {  },
                    icon: Icon(Icons.arrow_back_ios,
                      color: Colors.white,
                    )
                  ),
                  SizedBox(
                    height: 150,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text("Hi!",style: TextStyle(color: Colors.white,fontSize:40),),
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
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(10.0)
                            ),
                            child: TextField(
                              style: TextStyle(color: Colors.black,fontSize: 15),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                label: Text('Email'),
                                labelStyle: TextStyle(fontSize: 15,color: Colors.black.withOpacity(0.4)),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => LogIn()));
                            },
                            child: Container(
                              padding: EdgeInsets.all(15.0),
                              decoration: BoxDecoration(
                                color: Color(0xFF02c38e),
                                borderRadius: BorderRadius.circular(10.0)
                              ),
                              child: Center(child: Text("Continue",
                                style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold),)),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Center(
                            child: Text("or",
                              style: TextStyle(color: Colors.white,fontSize: 17),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          GestureDetector(
                            onTap: (){},
                            child: Container(
                              padding: EdgeInsets.all(12.0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)
                              ),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    radius: 12,
                                    child: Image.asset('assets/facebook.png'),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text("Continue with Facebook",
                                    style: TextStyle(fontSize: 17,color: Colors.black,fontWeight: FontWeight.bold),
                                  )
                                ],
                              )
                            ),
                          ),
                          SizedBox(
                            height: 18,
                          ),
                          GestureDetector(
                            onTap: (){},
                            child: Container(
                                padding: EdgeInsets.all(12.0),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 12,
                                      child: Image.asset('assets/google.png'),
                                      backgroundColor: Colors.transparent,
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text("Continue with Google",
                                      style: TextStyle(fontSize: 17,color: Colors.black,fontWeight: FontWeight.bold),
                                    )
                                  ],
                                )
                            ),
                          ),
                          SizedBox(
                            height: 18,
                          ),
                          GestureDetector(
                            onTap: (){},
                            child: Container(
                                padding: EdgeInsets.all(12.0),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 12,
                                      child: Image.asset('assets/apple.png'),
                                      backgroundColor: Colors.transparent,
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text("Continue with Apple",
                                      style: TextStyle(fontSize: 17,color: Colors.black,fontWeight: FontWeight.bold),
                                    )
                                  ],
                                )
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Row(
                            children: [
                              Text("Don't have an account?",
                                style: TextStyle(fontSize: 17,color: Colors.white),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              GestureDetector(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
                                },
                                child: Text("Sign Up",
                                  style: TextStyle(fontSize: 17,color: Color(0xFF02c38e)
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          GestureDetector(
                            onTap: (){
                            },
                            child: Text("Forget your password?",
                              style: TextStyle(fontSize: 17,color: Color(0xFF02c38e)
                              ),
                            ),
                          )
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
