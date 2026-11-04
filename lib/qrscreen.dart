import 'package:flutter/material.dart';

class Qrscreen extends StatefulWidget {
  const new({super.key});

  @override
  State<Qrscreen> createState() => _QrscreenState();
}

class _QrscreenState extends State<Qrscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios,color: Color.fromARGB(255, 16, 13, 64),),
        title: Center(
          child: Text('Pay With CHILDPAY',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 51, 51, 51)),
                ),
        ),
      actions: [
        Icon(Icons.more_horiz_outlined,color: Color.fromARGB(255, 51, 51, 51)),
      ],
      
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
                      children: [
                        Column(
                        spacing:6 ,
                          children: [
                            Text('Scan QR',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 196, 196, 196)),
                            ),
                            Container(
                                  height: 2,
                                  width: 230,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40),
                                    color: Color.fromARGB(255, 196, 196, 196)
                                  ),),
                          ],
                        ),
                        Column(
                        spacing:6 ,
                          children: [
                            Text('Done',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 16, 13, 64)),
                            ),
                            Container(
                                  height: 2,
                                  width: 250,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40),
                                    color: Color.fromARGB(255, 16, 13, 64)
                                  ),),
                          ],
                        ),
              
                      ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                                    height: 276,
                                    width: 250,
                                    decoration: BoxDecoration(
                                      
                                      color: Color.fromARGB(255, 16, 13, 64)
                                    ),
                                    child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9yU7W2P0t-4ANcjlJcTxK1zcobRKF5oJm4CXdH5UIRA&s=10",height: 200),
                                    ),

                  ),
                  Text('@muhammadabdullah',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 16, 13, 64)),
                            ),
          ],
        ),
      ),
    );
  }
}