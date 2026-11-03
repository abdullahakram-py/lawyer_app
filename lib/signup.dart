import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const new({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              Text('Welcome!',style: TextStyle(fontSize: 24,color:Color.fromARGB(255, 51, 51, 51),fontWeight: FontWeight.bold
              ),),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                    
                    'Full Name',style: TextStyle(fontSize: 12,color: Color.fromARGB(255, 153, 153, 153),
                  ),),
                    Container(
                      height: 45,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(
                          color: Color.fromARGB(255, 153, 153, 153),
                        )
                      ),
                    ),
                  ],
                ),
                
              ) ,
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                      
                      'Email Address',style: TextStyle(fontSize: 12,color: Color.fromARGB(255, 153, 153, 153),
                    ),),
                      Container(
                        height: 45,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          
                            color: Color.fromARGB(255, 247, 247, 247),
                          
                        ),
                      ),
                    ],
                  ),
              ), 
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                      
                      'Password',style: TextStyle(fontSize: 12,color: Color.fromARGB(255, 153, 153, 153),
                    ),),
                      Container(
                        height: 45,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          
                            color: Color.fromARGB(255, 247, 247, 247),
                          
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(Icons.password,color: Color.fromARGB(255, 16, 13, 64),size: 30,),
                          ],
                        ),
                      ),
                    ],
                  ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [

                    Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(
                            color: Color.fromARGB(255, 153, 153, 153),
                          )
                        ),
                      ),
                      SizedBox(width: 5,),
                        Text(
                        
                        'I have agree to our',style: TextStyle(fontSize: 12,color: Color.fromARGB(255, 16, 13, 64)
                      ),),
                      SizedBox(width: 5,),
                      Column(
                        children: [
                          Text(
                            
                            'Terms and Conditions',style: TextStyle(fontSize: 12,color: Color.fromARGB(255, 51, 51, 51),
                          ),),
                          Container(
                        height: 2,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color:Color.fromARGB(255, 51, 51, 51),
                        ),),
                        ],
                      ),
                  ],
                ),
              ) ,
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 45,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Color.fromARGB(255, 16, 13, 64),
                  ),
                  child: Center(
                    child: Text('Sign Up',style: TextStyle(fontSize: 16,color:Color.fromARGB(255, 255, 255, 255),fontWeight: FontWeight.bold
                                ),),
                  ),
                ),
              ),  
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 45,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(
                      color: Color.fromARGB(255, 16, 13, 64),
                    )
                  ),
                  child: Center(
                    child: Text('With Phone Number',style: TextStyle(fontSize: 16,color:Color.fromARGB(255, 16, 13, 64),fontWeight: FontWeight.bold
                                ),),
                  ),
                ),
              ), 
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        Text(
                                
                                'Already have an Account?',style: TextStyle(fontSize: 12,color: Color.fromARGB(255, 51, 51, 51),
                              ),),
                              Column(
                            children: [
                              Text(
                                
                                'Sign In',style: TextStyle(fontSize: 12,color: Color.fromARGB(255, 51, 51, 51),fontWeight: FontWeight.bold
                              ),),
                              Container(
                            height: 2,
                            width: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color:Color.fromARGB(255, 51, 51, 51),
                            ),),
                            ],
                          ),
                    ],
                  ),
                ),
              )                  
          ],
        ),
      ),
    );
  }
}