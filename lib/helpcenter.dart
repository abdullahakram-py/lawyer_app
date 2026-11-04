import 'package:flutter/material.dart';

class Helpcenter extends StatefulWidget {
  const new({super.key});

  @override
  State<Helpcenter> createState() => _HelpcenterState();
}

class _HelpcenterState extends State<Helpcenter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Center(child: Text('Help Center',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 51, 51, 51)),)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          spacing: 10,
        children: [
          Container(
          height: 45,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            border: Border.all(
              color: Color.fromARGB(255, 188, 194, 206)
            )
          ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.search,color: Color.fromARGB(255, 188, 194, 206)),
                  Text('Search',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color:  Color.fromARGB(255, 188, 194, 206)),),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Premium Account',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 51, 51, 51)),),
              Icon(Icons.arrow_forward_ios,color:  Color.fromARGB(255, 188, 194, 206))
            ],
          ),
          Divider(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Why my Account cant login',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 16, 13, 64)),),
                  Icon(Icons.arrow_downward_outlined,color:  Color.fromARGB(255, 188, 194, 206))
                ],
                ),
                Text(
                  textAlign: TextAlign.justify,
                  'Your account have an issue\n soon we can fix it please try again later',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color:  Color.fromARGB(255, 188, 194, 206)),),
                
              ],
            ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Business Account',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 51, 51, 51)),),
              Icon(Icons.arrow_forward_ios,color:  Color.fromARGB(255, 188, 194, 206))
            ],
          ),
          Divider(),
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Send Gift',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 51, 51, 51)),),
              Icon(Icons.arrow_forward_ios,color:  Color.fromARGB(255, 188, 194, 206))
            ],
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Buy Gift',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 51, 51, 51)),),
              Icon(Icons.arrow_forward_ios,color:  Color.fromARGB(255, 188, 194, 206))
            ],
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Like People',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 51, 51, 51)),),
              Icon(Icons.arrow_forward_ios,color:  Color.fromARGB(255, 188, 194, 206))
            ],
          ),
          Divider(),
      
        ],
        ),
      ),
    );
  }
}