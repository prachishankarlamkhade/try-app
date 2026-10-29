
import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  TextEditingController NameController = TextEditingController();
  TextEditingController EmailController = TextEditingController();
  TextEditingController MobileController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          textAlign: TextAlign.center,
          'Login',style: TextStyle(
          fontSize: 18,fontWeight: FontWeight.bold,
          color: Colors.black
        ),),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 450,width: double.infinity,
            margin: EdgeInsets.all(25),
            padding: EdgeInsets.all(13),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blue,width: 0.5
              ),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  blurRadius: 2,color: Colors.grey,
                ),
              ]
            ),
            child: Column(
              children: [
                SizedBox(height: 6,),
                TextFormField(
                  controller: MobileController,
                  decoration: InputDecoration(
                    labelText: 'Enter Mobile Number'
                  ),
                  validator: (value){
                    if(value != null){
                      value == MobileController;
                    }
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
