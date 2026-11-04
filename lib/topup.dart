import 'package:flutter/material.dart';

class Topup extends StatefulWidget {
  const new({super.key});

  @override
  State<Topup> createState() => _TopupState();
}

class _TopupState extends State<Topup> {
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
          child: Column(
            spacing: 10,
            
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.arrow_back_ios,color: Color.fromARGB(255, 250, 249, 255),),
                  Text('Top up',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color:Color.fromARGB(255, 250, 249, 255) ),
                      ),
                      Icon(Icons.more_horiz_outlined,color:Color.fromARGB(255, 250, 249, 255)),
                ],
              ),
              Container(
                height: 94,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color.fromARGB(255, 250, 249, 255),

                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQVUoc9uyfdZN5QltjvBA-BJBYdXhfCuwB_NLkLAg_Gug&s=10",height: 60,),
                          SizedBox(width: 5,),
                          Text('Debit',style: TextStyle(fontSize: 12,color:Color.fromARGB(255, 51, 51, 51),fontWeight: FontWeight.bold
                                        ),),
                        ],
                      ),
                    Row(
                      children: [
                        Text('\$364.00',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 16, 13, 64)),
                          ),
                          Icon(Icons.arrow_drop_down_outlined,color:Color.fromARGB(255, 16, 13, 64)),
                      ],
                    ),
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  
                  Text('Enter Nominal',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 250, 249, 255),)
                              ),
                ],
              ),
              Row(
                children: [
                    SizedBox(width: 20,),
                  Text('Set Nominals need',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 153, 153, 153),)
                                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                  children: [
                    Container(
                      height: 32,
                      width: 32,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(255, 245, 245, 245)
                        
                      ),
                      child:  Center(
                        child: Text('-',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 198, 198, 198)),
                                  ),
                      ),
                    ),
                    Text('\$150.00',style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 16, 13, 64)),
                                ),
                          Container(
                      height: 32,
                      width: 32,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color:Color.fromARGB(255, 16, 13, 64) 
                        
                      ),
                      child:  Center(
                        child: Text('+',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color:Color.fromARGB(255, 245, 245, 245) ),
                                  ),
                      ),
                    ),      
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                                height: 2,
                                width: 230,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: Color.fromARGB(255, 16, 13, 64),
                                ),),
                        Container(
                      height: 32,
                      width: 32,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color:Color.fromARGB(255, 16, 13, 64) 
                        
                      ),
                      
                      ),
                                Container(
                                height: 2,
                                width: 220,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: Color.fromARGB(255, 196, 196, 196)
                                ),),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                                    height: 48,
                                    width: MediaQuery.of(context).size.width*0.3,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color.fromARGB(255, 250, 250, 250)
                                    ),
                                    child:  Center(
                                      child: Text('\$50',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 198, 198, 198)),
                                        ),
                                    ),
                                    ),
                                    Container(
                                    height: 48,
                                    width: MediaQuery.of(context).size.width*0.3,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color.fromARGB(255, 250, 250, 250)
                                    ),
                                    child:  Center(
                                      child: Text('\$100',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 198, 198, 198)),
                                        ),
                                    ),
                                    ),
                                    Container(
                                    height: 48,
                                    width: MediaQuery.of(context).size.width*0.3,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color.fromARGB(255, 16, 13, 64) 
                                    ),
                                    child:  Center(
                                      child: Text('\$150',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color:Color.fromARGB(255, 250, 250, 250) ),
                                        ),
                                    ),
                                    ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                                    height: 48,
                                    width: MediaQuery.of(context).size.width*0.3,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color.fromARGB(255, 250, 250, 250)
                                    ),
                                    child:  Center(
                                      child: Text('\$200',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 198, 198, 198)),
                                        ),
                                    ),
                                    ),
                                    Container(
                                    height: 48,
                                    width: MediaQuery.of(context).size.width*0.3,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color.fromARGB(255, 250, 250, 250)
                                    ),
                                    child:  Center(
                                      child: Text('\$250',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 198, 198, 198)),
                                        ),
                                    ),
                                    ),
                                    Container(
                                    height: 48,
                                    width: MediaQuery.of(context).size.width*0.3,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color.fromARGB(255, 250, 250, 250)
                                    ),
                                    child:  Center(
                                      child: Text('\$300',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 198, 198, 198)),
                                        ),
                                    ),
                                    ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                                    height: 48,
                                    width: MediaQuery.of(context).size.width*0.3,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color.fromARGB(255, 250, 250, 250)
                                    ),
                                    child:  Center(
                                      child: Text('\$350',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 198, 198, 198)),
                                        ),
                                    ),
                                    ),
                                    Container(
                                    height: 48,
                                    width: MediaQuery.of(context).size.width*0.3,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color.fromARGB(255, 250, 250, 250)
                                    ),
                                    child:  Center(
                                      child: Text('\$400',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 198, 198, 198)),
                                        ),
                                    ),
                                    ),
                                    Container(
                                    height: 48,
                                    width: MediaQuery.of(context).size.width*0.3,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color.fromARGB(255, 250, 250, 250)
                                    ),
                                    child:  Center(
                                      child: Text('\$450',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 198, 198, 198)),
                                        ),
                                    ),
                                    ),
                ],
              ),
                SizedBox(height: 80,),
                  Container(
                      height: 45,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Color.fromARGB(255, 16, 13, 64),
                      ),
                      child: Center(
                        child: Text('Proceed',style: TextStyle(fontSize: 16,color:Color.fromARGB(255, 255, 255, 255),fontWeight: FontWeight.bold
                                    ),),
                      ),
                    ),
                    Column(
                      children: [
                        Text('Cancel',style: TextStyle(fontSize: 16,color:Color.fromARGB(255, 16, 13, 64),fontWeight: FontWeight.bold
                                    ),),
                        Container(
                          height: 2,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Color.fromARGB(255, 16, 13, 64),
                          ),),
                      ],
                    ),
                ],
              ),
           
        ),
        ),
    );
  }
}