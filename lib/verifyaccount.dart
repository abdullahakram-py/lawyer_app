import 'package:flutter/material.dart';

class Verifyaccount extends StatefulWidget {
  const new({super.key});

  @override
  State<Verifyaccount> createState() => _VerifyaccountState();
}

class _VerifyaccountState extends State<Verifyaccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          spacing: 50,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(),
        
              Column(
                children: [
                  Text('Verify Account',style: TextStyle(fontSize: 24,color:Color.fromARGB(255, 51, 51, 51),fontWeight: FontWeight.bold
                    ),),
                    Text(
                      textAlign: TextAlign.center,
                      'Enter 4 digit code  we have sent  \n to +923456789 ',style: TextStyle(fontSize: 14,color: Color.fromARGB(255, 153, 153, 153),fontWeight: FontWeight.bold,
                    ),),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            
                            children: [
                              Text('8',style: TextStyle(fontSize: 32,color:Color.fromARGB(255, 196, 196, 196),fontWeight: FontWeight.bold
                                          ),),
                              Container(
                                height: 2,
                                width: 70,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: Color.fromARGB(255, 196, 196, 196),
                                ),),
                            ],
                          ),
                          SizedBox(width: 30,),
                          Column(
                            children: [
                              Text('9',style: TextStyle(fontSize: 32,color:Color.fromARGB(255, 51, 51, 51),fontWeight: FontWeight.bold
                                          ),),
                              Container(
                                height: 2,
                                width: 70,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: Color.fromARGB(255, 51, 51, 51),
                                ),),
                            ],
                          ),SizedBox(width: 30,),
                          Column(
                            children: [
                              Text('4',style: TextStyle(fontSize: 32,color:Color.fromARGB(255, 51, 51, 51),fontWeight: FontWeight.bold
                                          ),),
                              Container(
                                height: 2,
                                width: 70,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: Color.fromARGB(255, 51, 51, 51),
                                ),),
                            ],
                          ),SizedBox(width: 30,),
                          Column(
                            children: [
                              Text('5',style: TextStyle(fontSize: 32,color:Color.fromARGB(255, 51, 51, 51),fontWeight: FontWeight.bold
                                          ),),
                              Container(
                                height: 2,
                                width: 70,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: Color.fromARGB(255, 51, 51, 51),
                                ),),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          
                          'Havent recieved verfication code? ',style: TextStyle(fontSize: 14,color: Color.fromARGB(255, 153, 153, 153),fontWeight: FontWeight.bold,
                        ),),
                          Column(
                          children: [
                            Text('Resend Code',style: TextStyle(fontSize: 14,color:Color.fromARGB(255, 16, 13, 64),fontWeight: FontWeight.bold
                                        ),),
                            Container(
                              height: 2,
                              width: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Color.fromARGB(255, 16, 13, 64),
                              ),),
                          ],
                        ),
                      ],
                    ),
                ],
              ),
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
                    child: Text('Verify Now',style: TextStyle(fontSize: 16,color:Color.fromARGB(255, 255, 255, 255),fontWeight: FontWeight.bold
                                ),),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}