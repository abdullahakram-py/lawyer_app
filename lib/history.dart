import 'package:flutter/material.dart';

class History extends StatefulWidget {
  const new({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('History',style: TextStyle(fontSize: 16,color:Color.fromARGB(255, 16, 13, 64),fontWeight: FontWeight.bold
                                      ),),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          spacing: 5,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                        spacing:6 ,
                          children: [
                            Text('History',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 16, 13, 64)),
                            ),
                            Container(
                                  height: 2,
                                  width: MediaQuery.of(context).size.width*0.3,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40),
                                    color: Color.fromARGB(255, 16, 13, 64),
                                  ),),
                          ],
                        ),
                        Column(
                        spacing:6 ,
                          children: [
                            Text('Send',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 196, 196, 196)),
                            ),
                            Container(
                                  height: 2,
                                  width: MediaQuery.of(context).size.width*0.3,                                
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40),
                                    color: Color.fromARGB(255, 196, 196, 196)
                                  ),),
                          ],
                        ),
                        Column(
                        spacing:6 ,
                          children: [
                            Text('Request',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 196, 196, 196)),
                            ),
                            Container(
                                  height: 2,
                                  width: MediaQuery.of(context).size.width*0.3,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40),
                                    color: Color.fromARGB(255, 196, 196, 196)
                                  ),),
                          ],
                        ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Transaction',style: TextStyle(fontSize: 16,color:Color.fromARGB(255, 16, 13, 64),fontWeight: FontWeight.bold
                                          ),),
                  Container(
                                  height: 45,
                                  width: 78,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    
                                    border: Border.all(
                                      color: Color.fromARGB(255, 196, 196, 196),
                                    )
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                          Text('Week',style: TextStyle(fontSize: 14,color:Color.fromARGB(255, 16, 13, 64),fontWeight: FontWeight.bold
                                            ),),
                                            Icon(Icons.arrow_drop_down,color:Color.fromARGB(255, 16, 13, 64))
                                      ],
                                    ),
                                  ),
                                  ),                        
              ],
            ),
              Container(
              height: 400,
              child: ListView.builder(itemBuilder: (context,index)=> Column(
                children: [
                  Container(
                  height: 82,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.network("https://cdn-icons-png.flaticon.com/512/6858/6858504.png",height: 50,),
                            SizedBox(width: 10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Muhammad Abdullah',style: TextStyle(fontSize: 16,color:Color.fromARGB(255, 16, 13, 64),fontWeight: FontWeight.bold
                                    ),),
                                    Text('07 july 2025',style: TextStyle(fontSize: 14,color:Color.fromARGB(255, 16, 13, 64),
                                            ),),
                              ],
                            ),
                          ],
                        ),
                          Text('\$560.00',style: TextStyle(fontSize: 16,color:Color.fromARGB(255, 16, 13, 64),fontWeight: FontWeight.bold
                                ),),
                      ],
                    ),
                  ),
                  ),
                  Divider()
                ],
              ),),
             )
        
          ],
        ),
      )
    );
  }
}