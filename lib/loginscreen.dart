import 'package:flutter/material.dart';

import 'LoginPage.dart';

class loginscreen extends StatefulWidget {
  const loginscreen({super.key});

  @override
  State<loginscreen> createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {
  get c4f => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/images/img2.jpg"),
            fit: BoxFit.cover),
          ),
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [ 
              Center(child: Text("Welcome!",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),)),
                SizedBox(height: 20,),
              Container(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF163c4f)),
                      onPressed: (){},
                      child: Text("Create Acoount",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,color: Colors.white),),),
                      height: 50,
                width: 300,
              ) ,
              SizedBox(height: 20,),

              Container(
                child: OutlinedButton(
                    style: OutlinedButton.styleFrom(side: BorderSide(
                      color: customColor("163c4f")
                    )),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>loginpage()));

                    }, child: Text("Login",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23,color: customColor("163c4f")),)),
             width: 300,
                height: 50,
              ) ,
              SizedBox(height: 30,),

              Container(
                height: 50,
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Image.asset("assets/images/img6.png",height: 90,width: 60,),
                   Image.asset("assets/images/img3.png",height: 70,width: 50,),
                   Image.asset("assets/images/img5.png",height: 70,width: 45,),
                   Image.asset("assets/images/img4.png",height: 70,width: 40,),
                 ],
               ),
              ),
              InkWell(onTap:(){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>loginscreen()));
              },child: Text("Sign in with another account",style: TextStyle(fontSize: 17),))
            ],
          ),
        ),
    );
  }
}
Color customColor(String colorCode) {
  colorCode = colorCode.replaceAll("#", "");
  String color = "0xff" + colorCode;
  return Color(int.parse(color));
}
