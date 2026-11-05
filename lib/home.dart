import 'package:flutter/material.dart';
import 'package:lawyer_app/history.dart';
import 'package:lawyer_app/profilescreen.dart';
import 'package:lawyer_app/yoursaving.dart';

class Home extends StatefulWidget {
  const new({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            spacing: 10,
          children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Welcome Back!',style: TextStyle(fontSize: 14,color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                    Text('Muhammad Abdullah',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                ],
              ),
                      Icon(Icons.notifications_active_outlined,color: Color.fromARGB(255, 255, 255, 255),)
            ],
          ),
          Container(
            height: 172,
            width: 372,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('My Balance',style: TextStyle(fontSize: 14,color: Color.fromARGB(255, 16, 13, 64)),
                      ),
                      Text('\$24,567.89',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color:Color.fromARGB(255, 16, 13, 64) ),
                            ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 46,
                            width: 46,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Color.fromARGB(255, 236, 231, 255),
                            ),
                            child: Center(child: Image.network('https://cdn-icons-png.flaticon.com/512/4121/4121776.png',height: 35,)),
                          ),
                          Text('Send',style: TextStyle(fontSize: 14,color: Color.fromARGB(255, 16, 13, 64)),
                      ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 46,
                            width: 46,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Color.fromARGB(255, 236, 231, 255),
                            ),
                            child: Center(child: Image.network('https://cdn-icons-png.flaticon.com/512/10981/10981887.png',height: 35,)),
                          ),
                            Text('Request',style: TextStyle(fontSize: 14,color: Color.fromARGB(255, 16, 13, 64)),
                      ),
                        ],
                      ),Column(
                        children: [
                          Container(
                            height: 46,
                            width: 46,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Color.fromARGB(255, 236, 231, 255),
                            ),
                            child: Center(child: Image.network('https://cdn-icons-png.flaticon.com/512/7037/7037916.png',height: 35,)),
                          ),
                            Text('Pay',style: TextStyle(fontSize: 14,color: Color.fromARGB(255, 16, 13, 64)),
                      ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 46,
                            width: 46,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Color.fromARGB(255, 236, 231, 255),
                            ),
                            child: Center(child: Image.network('https://cdn-icons-png.flaticon.com/512/1796/1796888.png',height: 35,)),
                          ),
                            Text('Top up',style: TextStyle(fontSize: 14,color: Color.fromARGB(255, 16, 13, 64)),
                      ),
                        ],
                      ),
                    ],
                  ),
                ),

              ],
            ),
            ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Your Cards',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 255, 255, 255)),
                          ),
                          Text('View all',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 255, 255, 255)),
                          ),
                ],
              ),
              Container(
                height:200 ,
                child:ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Container(
                  height: 200,
                  width: 327,
                  margin: EdgeInsets.only(right: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromARGB(255, 16, 13, 64)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                          
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Payment Card',style: TextStyle(fontSize: 12,color: Color.fromARGB(255, 255, 255, 255)),
                                    ),
                                    Image.network("https://cdn.iconscout.com/icon/free/png-256/free-mastercard-logo-icon-svg-download-png-2944982.png?f=webp",height: 20,)
                              ],
                            ),
                          
                          Text('2298 1268 3398 9874',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 255, 255, 255)),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('\$2885.00',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 255, 255, 255)),
                                        ),
                                        Text('12/24',style: TextStyle(fontSize: 14,color: Color.fromARGB(255, 255, 255, 255)),
                                        ),
                                      ],
                                    ),
                                      
                      ],
                    ),
                  ),
                ),
              ),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Your Saving',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 16, 13, 64)),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Yoursaving()));
                            },
                            child: Text('View all',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 16, 13, 64)),
                            ),
                          ),
                ],
              ),
                Container(
                height: 80,
                  child:ListView.builder(
                  
                  itemBuilder: (context, index) => Container(
                    height: 80,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Color.fromARGB(255, 242, 242, 242),
                      ),
                      child: Center(child: Image.network('https://png.pngtree.com/png-vector/20250221/ourmid/pngtree-top-quality-playstation-5-console-isolated-png-image_15514648.png',color: .fromARGB(255, 16, 13, 64),height: 40, )),
                      ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Buy Play Station',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 16, 13, 64)),
                            ),
                              Text('Slim 2TB 5G Games',style: TextStyle(fontSize: 12,color: Color.fromARGB(255, 51, 51, 51)),
                            ),
                          ],
                        ),
                        Image.network("https://cdn-icons-png.flaticon.com/512/13308/13308717.png",color: Color.fromARGB(255, 16, 13, 64),height: 50,)
                  ],
                      ),
                        ),
                ),),
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
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>History()));
                            },
                            child: Icon(Icons.history_rounded,color:Color.fromARGB(255, 16, 13, 64) )),
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
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context,MaterialPageRoute(builder: (context)=>Profilescreen())); 

                            },
                            child: Icon(Icons.verified_user_outlined,color:Color.fromARGB(255, 16, 13, 64) )),
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
    );
  }
}