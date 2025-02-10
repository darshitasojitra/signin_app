import 'package:flutter/material.dart';

import 'LoginPage.dart';

class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
 

  bool value1=false;

  get textGrey => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(image:AssetImage("assets/images/img2.jpg"),
            fit: BoxFit.cover),
          ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Text("Welcome back!",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35),)),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 30,top: 5,right: 30,bottom: 5),
                child: TextFormField(
                      decoration: InputDecoration(
                        fillColor: Colors.grey[350],
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0),
                          borderSide: BorderSide(
                            color: Colors.grey
                          )
                        ),
                        labelText:"Username",
                        hintText: "Username",
                        hintStyle: TextStyle(fontSize: 18)
                      ),
                ),
              ),
            ),
            SizedBox(width: 2,),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 30,top: 5,right: 30,bottom: 5),
                child: TextFormField(
                  decoration: InputDecoration(
                    fillColor: Colors.grey[350],
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      borderSide: BorderSide(
                        color: Colors.grey
                      )
                    ),
                    labelText: "Password",
                    hintText: "Password",
                    hintStyle: TextStyle(fontSize: 18),
                    suffixIcon: Icon(Icons.remove_red_eye,size: 20,)
                  ),
                ),
              ),
            ),

    Row(
      children: [
        Container(
          margin: EdgeInsets.only(left: 45),
          width: MediaQuery.of(context).size.width/2-50,
          child: CheckboxListTile(
            checkColor: textGrey,
            activeColor: textGrey,
            value: value1,
            onChanged: (value) {
              setState(() {
                value1=value!;
              });

            },
            controlAffinity: ListTileControlAffinity.leading,
            contentPadding: EdgeInsets.only(left: 0, top: 0),
            title: Text(
              "Remember Me",
              style: TextStyle(color: textGrey, fontFamily: "Dubai", fontSize: 14),
            ),
          ),
        ),
        Container(
          alignment: Alignment.centerRight,
          margin: EdgeInsets.only(left: 60),
          width: MediaQuery.of(context).size.width/2-100,
          child: InkWell(
            child: Text("Forget Password?",style: TextStyle(fontSize: 20),),
          ),
        ),
      ],
    ),

          ],
        ),

      ),
      

    );
  }
}


