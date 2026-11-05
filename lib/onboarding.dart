import 'package:flutter/material.dart';

class Onboarding extends StatefulWidget {
  const new({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       
      body: 
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Image.network("https://cdn-icons-png.flaticon.com/512/556/556104.png",height: 150,width: 150,)),
            SizedBox(height: 20,),
            Text('Send Money',style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 38, 38, 38),fontWeight: FontWeight.bold
            ),),
            SizedBox(height: 20,),
            
                Text(
                  textAlign: TextAlign.center,
                  'Send Money easily and with one \n click everything will be sent every \n time you make a transaction',style: TextStyle(fontSize: 14,color: Color.fromARGB(255, 153, 153, 153),fontWeight: FontWeight.bold,
                ),),
              SizedBox(height: 20,),
              Container(
                height: 10,
                width: 10,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Color.fromARGB(255, 16, 13, 64),
                ),
              ),
              SizedBox(height: 20,),
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
                    child: Text('Next Step',style: TextStyle(fontSize: 16,color:Color.fromARGB(255, 255, 255, 255),fontWeight: FontWeight.bold
                                ),),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              
                Column(
                  children: [
                    Text('Skip This Step',style: TextStyle(fontSize: 16,color:Color.fromARGB(255, 16, 13, 64),fontWeight: FontWeight.bold
                                ),),
                    Container(
                      height: 2,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Color.fromARGB(255, 16, 13, 64),
                      ),),
                  ],
                ),
          ],
        ),
      
    );
  }
}