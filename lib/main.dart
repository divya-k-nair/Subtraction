import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main()
{
  runApp(App());
}
class App extends StatelessWidget {
  TextEditingController num1=TextEditingController();
  TextEditingController num2=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lime,
        appBar: AppBar(
          title: Text("SUBTRACTION"),
        ),
        body:
        SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(20),
            child: Column(
              children: [
                SizedBox(height: 20,),
                TextField(
                  controller: num1,
                  decoration: InputDecoration(
                    prefix: CircularProgressIndicator(),
                    prefixIcon: Icon(Icons.arrow_forward_ios_rounded,color: Colors.indigo,size: 40,),

                    labelText: "Number 1",
                    hintText: "Number 1",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(200),
                    )
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  controller: num2,
                  decoration: InputDecoration(
                      prefix: CircularProgressIndicator(),
                      prefixIcon: Icon(Icons.arrow_forward_ios_rounded,color: Colors.indigo,size: 40,),

                      labelText: "Number 2",
                      hintText: "Number 2",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(200),
                      ),
                  ),

                ),
                SizedBox(height: 20,),
                SizedBox(
                  height: 60,
                  width: double.infinity,
                  child:  RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(200),
                    ),
                    color: Colors.greenAccent,
                    onPressed: (){
                      var getNumber1=int.parse(num1.text);
                      var getNumber2=int.parse(num2.text);
                      var getResult=getNumber1-getNumber2;
                      print(getNumber1);
                      print(getNumber2);
                      print(getResult);

                    },
                    child: Text("SUB",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                      ),
                    ),
                  ),
                )
              ],//children
            ),
          ),
        ),
      ),
    );
  }
}
