import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyForm());
}

class MyForm extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: Colors.brown,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 25,
          )
        ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              padding: EdgeInsets.symmetric(horizontal: 56.0, vertical: 26.0),
              textStyle: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                letterSpacing: 3
              )
            )
          ),
      ),
      home: FormPage(),
    );
  }

}

class FormPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("This is a form"),
      ),
      body: Center(
        child: Container(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "This is my Form",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              Container(
                height: 45,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Name",
                  labelStyle: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w900
                  ),

                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.purple,
                            width: 3
                        )
                    ),

                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.deepOrange,
                          width: 2
                      )
                  ),
                ),
              ),
              Container(
                height: 45,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Mail",
                  labelStyle: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w900
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.purple,
                          width: 3
                      )
                  ),

                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.deepOrange,
                          width: 2
                      )
                  ),
                ),
              ),
              Container(
                height: 45,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Number",
                  labelStyle: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w900
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.purple,
                          width: 3
                      )
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.deepOrange,
                      width: 2
                    )
                  ),
                ),
              ),
              Container(
                height: 45,
              ),
              ElevatedButton(onPressed: (){}, child: Text("Click Me"))
            ],
          ),
        ),
      ),
    );
  }
}