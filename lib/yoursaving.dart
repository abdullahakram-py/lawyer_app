import 'package:flutter/material.dart';

class Yoursaving extends StatefulWidget {
  const new({super.key});

  @override
  State<Yoursaving> createState() => _YoursavingState();
}

class _YoursavingState extends State<Yoursaving> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios,color: Color.fromARGB(255, 16, 13, 64),),
        title: Center(
          child: Text('Your Saving',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 51, 51, 51)),
                ),
        ),
      actions: [
        Icon(Icons.more_horiz_outlined,color: Color.fromARGB(255, 196, 196, 196)),
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
                      Text('On Progress',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 16, 13, 64)),
                      ),
                      Container(
                            height: 2,
                            width: 230,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: Color.fromARGB(255, 16, 13, 64),
                            ),),
                    ],
                  ),
                  Column(
                  spacing:6 ,
                    children: [
                      Text('Done',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 196, 196, 196)),
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
        
                ],
            ),
             Container(
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
                            Text('Slim 2TB 5G Games',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 51, 51, 51)),
                          ),
                        ],
                      ),
                      Image.network("https://cdn-icons-png.flaticon.com/512/13308/13308717.png",color: Color.fromARGB(255, 16, 13, 64),height: 50,)
                ],
              ),
            ),
              Container(
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
                    child: Center(child: Image.network('https://cdn-icons-png.flaticon.com/512/171/171239.png',color: .fromARGB(255, 16, 13, 64),height: 40, )),
                    ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Buy Car Remote',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 16, 13, 64)),
                          ),
                            Text('Mercedez Benz 001',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 51, 51, 51)),
                          ),
                        ],
                      ),
                      Image.network("https://cdn-icons-png.flaticon.com/512/13308/13308717.png",color: Color.fromARGB(255, 16, 13, 64),height: 50,)
                ],
              ),
            ),
          Container(
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
                    child: Center(child: Image.network('https://cdn-icons-png.flaticon.com/512/384/384144.png',color: .fromARGB(255, 16, 13, 64), height: 40,)),
                    ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Buy Bicycle',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 16, 13, 64)),
                          ),
                            Text('Mountain bike R7',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 51, 51, 51)),
                          ),
                        ],
                      ),
                      Image.network("https://cdn-icons-png.flaticon.com/512/13308/13308717.png",color: Color.fromARGB(255, 16, 13, 64),height: 50,)
                ],
              ),
            ),
          
          ],
        ),
      ),
    );
  }
}