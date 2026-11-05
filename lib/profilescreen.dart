import 'package:flutter/material.dart';

class Profilescreen extends StatefulWidget {
  const new({super.key});

  @override
  State<Profilescreen> createState() => _ProfilescreenState();
}

class _ProfilescreenState extends State<Profilescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
        image: DecorationImage(image: NetworkImage("https://wallpapers.com/images/hd/dark-blue-ombre-39m8ul0djo54qj0k.jpg"),fit: BoxFit.cover)
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              spacing: 5,
              children: [
                Text('Profile Screen',style: TextStyle(fontSize: 16,color:Color.fromARGB(255, 255, 255, 255),fontWeight: FontWeight.bold
                ),),
                SizedBox(height: 20,),
                Container(
            
                  height: 80,
                  width: 320,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromARGB(255, 255, 255, 255)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.network("https://cdn-icons-png.flaticon.com/512/6858/6858504.png",height: 50,),
                        
                        Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Muhammad Abdullah',style: TextStyle(fontSize: 16,color:Color.fromARGB(255, 16, 13, 64),fontWeight: FontWeight.bold
                                          ),),
                                          Text('08287900008662',style: TextStyle(fontSize: 14,color:Color.fromARGB(255, 16, 13, 64),
                                                  ),),
                                    ],
                                  ),
                        Container(
                          height: 25,
                          width: 
                          63,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(
                              color:Color.fromARGB(255, 16, 13, 64),
                            )
                          ),
                          child: Center(
                            child: Text('Basic',style: TextStyle(fontSize: 14,color:Color.fromARGB(255, 16, 13, 64),
                                                    ),),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                      
                        height: 72,
                        width: 155,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color.fromARGB(255, 255, 255, 255)
                        ),
                        child:Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            
                            children: [
                              Container(
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(25),
                                            color: Color.fromARGB(255, 236, 231, 255),
                                          ),
                                          child: Center(child: Image.network('https://cdn-icons-png.flaticon.com/512/9970/9970297.png',height: 24,width: 24,color:Color.fromARGB(255, 16, 13, 64),)),
                                        ),
                                        SizedBox(width: 10,),
                                        Text('Scan QR',style: TextStyle(fontSize: 14,color: Color.fromARGB(255, 16, 13, 64)),
                                ),
                            ],
                          ),
                        ),
                        ),
                          Container(
                      
                        height: 72,
                        width: 155,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color.fromARGB(255, 255, 255, 255)
                        ),
                        child:Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            
                            children: [
                              Container(
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(25),
                                            color: Color.fromARGB(255, 236, 231, 255),
                                          ),
                                          child: Center(child: Image.network('https://cdn-icons-png.flaticon.com/512/1058/1058992.png',height: 24,width: 24,color:Color.fromARGB(255, 16, 13, 64),)),
                                        ),
                                        SizedBox(width: 10,),
                                        Text('My QR',style: TextStyle(fontSize: 14,color: Color.fromARGB(255, 16, 13, 64)),
                                ),
                            ],
                          ),
                        ),
                        ),
                    
                    ],
                  ),
                ),
            
                  Row(
                    children: [
                      Text('Account',style: TextStyle(fontSize: 16,color: Color.fromARGB(255, 255, 255, 255),fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Container(
                                          height: 72,
                                          width: MediaQuery.of(context).size.width,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(25),
                                            color: Color.fromARGB(255, 255, 255, 255)
                                          ),
                                          child:  Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                              Row(
                                                children: [
                                                  Container(
                                                    height: 40,
                                                        width: 40,
                                                      decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(25),
                                                  color: Color.fromARGB(255, 236, 231, 255),
                                                          ),
                                                        child: Center(child: Image.network('https://cdn-icons-png.flaticon.com/256/1077/1077114.png',height: 24,width: 24,color:Color.fromARGB(255, 16, 13, 64),)),
                                                            ),
                                                      SizedBox(width: 10,),
                                                                                      Text('Change Personal Profile',style: TextStyle(fontSize: 14,color: Color.fromARGB(255, 16, 13, 64)),
                                                                              ),
                                                ],
                                              ), 
                                                                            Icon(Icons.arrow_forward_ios,color: Color.fromARGB(255, 16, 13, 64))
                                              ],
                                            ),
                                          )
                                          ),
                      Container(
                                          height: 72,
                                          width: MediaQuery.of(context).size.width,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(25),
                                            color: Color.fromARGB(255, 255, 255, 255)
                                          ),
                                          child:  Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                              Row(
                                                children: [
                                                  Container(
                                                    height: 40,
                                                        width: 40,
                                                      decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(25),
                                                  color: Color.fromARGB(255, 236, 231, 255),
                                                          ),
                                                        child: Center(child: Image.network('https://cdn-icons-png.flaticon.com/256/542/542689.png',height: 24,width: 24,color:Color.fromARGB(255, 16, 13, 64),)),
                                                            ),
                                                      SizedBox(width: 10,),
                                                                                      Text('Change Email Address',style: TextStyle(fontSize: 14,color: Color.fromARGB(255, 16, 13, 64)),
                                                                              ),
                                                ],
                                              ), 
                                                                            Icon(Icons.arrow_forward_ios,color: Color.fromARGB(255, 16, 13, 64))
                                              ],
                                            ),
                                          )
                                          ),
                                            Container(
                                          height: 72,
                                          width: MediaQuery.of(context).size.width,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(25),
                                            color: Color.fromARGB(255, 255, 255, 255)
                                          ),
                                          child:  Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                              Row(
                                                children: [
                                                  Container(
                                                    height: 40,
                                                        width: 40,
                                                      decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(25),
                                                  color: Color.fromARGB(255, 236, 231, 255),
                                                          ),
                                                        child: Center(child: Image.network('https://cdn-icons-png.flaticon.com/256/61/61457.png',height: 24,width: 24,color:Color.fromARGB(255, 16, 13, 64),)),
                                                            ),
                                                      SizedBox(width: 10,),
                                                                                      Text('Change Password',style: TextStyle(fontSize: 14,color: Color.fromARGB(255, 16, 13, 64)),
                                                                              ),
                                                ],
                                              ), 
                                                                            Icon(Icons.arrow_forward_ios,color: Color.fromARGB(255, 16, 13, 64))
                                              ],
                                            ),
                                          )
                                          ),
                                          Row(
                    children: [
                      Text('More Settings',style: TextStyle(fontSize: 16,color: Color.fromARGB(255, 255, 255, 255),fontWeight: FontWeight.bold)),
                    ],
                  ),
            
                                          Container(
                                          height: 72,
                                          width: MediaQuery.of(context).size.width,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(25),
                                            color: Color.fromARGB(255, 255, 255, 255)
                                          ),
                                          child:  Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                              Row(
                                                children: [
                                                  Container(
                                                    height: 40,
                                                        width: 40,
                                                      decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(25),
                                                  color: Color.fromARGB(255, 236, 231, 255),
                                                          ),
                                                        child: Center(child: Image.network('https://cdn-icons-png.flaticon.com/256/61/61457.png',height: 24,width: 24,color:Color.fromARGB(255, 16, 13, 64),)),
                                                            ),
                                                      SizedBox(width: 10,),
                                                                                      Text('Account Security',style: TextStyle(fontSize: 14,color: Color.fromARGB(255, 16, 13, 64)),
                                                                              ),
                                                ],
                                              ), 
                                                                            Icon(Icons.arrow_forward_ios,color: Color.fromARGB(255, 16, 13, 64))
                                              ],
                                            ),
                                          )
                                          ),
                                          Container(
                                          height: 72,
                                          width: MediaQuery.of(context).size.width,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(25),
                                            color: Color.fromARGB(255, 255, 255, 255)
                                          ),
                                          child:  Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                              Row(
                                                children: [
                                                  Container(
                                                    height: 40,
                                                        width: 40,
                                                      decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(25),
                                                  color: Color.fromARGB(255, 236, 231, 255),
                                                          ),
                                                        child: Center(child: Image.network('https://static.thenounproject.com/png/1829242-200.png',height: 24,width: 24,color:Color.fromARGB(255, 16, 13, 64),)),
                                                            ),
                                                      SizedBox(width: 10,),
                                                                                      Text('Help and Privacy',style: TextStyle(fontSize: 14,color: Color.fromARGB(255, 16, 13, 64)),
                                                                              ),
                                                ],
                                              ), 
                                                                            Icon(Icons.arrow_forward_ios,color: Color.fromARGB(255, 16, 13, 64))
                                              ],
                                            ),
                                          )
                                          ),
                                          Container(
                  height: 58,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Color.fromARGB(255, 242, 242, 242),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Icon(Icons.home_filled,color:Color.fromARGB(255, 16, 13, 64) ),
                            Text('Home',style: TextStyle(fontSize: 12,color: Color.fromARGB(255, 51, 51, 51)),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.history_rounded,color:Color.fromARGB(255, 16, 13, 64) ),
                              Text('History',style: TextStyle(fontSize: 12,color: Color.fromARGB(255, 51, 51, 51)),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.graphic_eq_outlined,color:Color.fromARGB(255, 16, 13, 64) ),
                              Text('Statistics',style: TextStyle(fontSize: 12,color: Color.fromARGB(255, 51, 51, 51)),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.verified_user_outlined,color:Color.fromARGB(255, 16, 13, 64) ),
                              Text('Verified users',style: TextStyle(fontSize: 12,color: Color.fromARGB(255, 51, 51, 51)),
                            ),
                          ],
                        ),
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