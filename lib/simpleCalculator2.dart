import 'package:flutter/material.dart';

class Simplecalculator2 extends StatefulWidget {
  Simplecalculator2({super.key});

  @override
  State<Simplecalculator2> createState() => _Simplecalculator2State();
}

class _Simplecalculator2State extends State<Simplecalculator2> {
  TextEditingController num1Controller = TextEditingController();

  TextEditingController num2Controller = TextEditingController();

  TextEditingController operationController = TextEditingController();

  double ? result;

  void calculate(){

    if(num1Controller.text.isNotEmpty && num2Controller.text.isNotEmpty && operationController.text.isNotEmpty){
      if(operationController.text == '+' || operationController.text == '-' || operationController.text == '*' || operationController.text == '/'){
        switch(operationController.text){
          case '+' :
            result =  double.parse(num1Controller.text) + double.parse(num2Controller.text);
            break;
          case '-' :
            result =  double.parse(num1Controller.text) - double.parse(num2Controller.text);
            break;
          case '*' :
            result =  double.parse(num1Controller.text) * double.parse(num2Controller.text);
            break;
          case '/' :
            result =  double.parse(num1Controller.text) / double.parse(num2Controller.text);
            break;
          default:
            result = null;
        }

      }else{
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Enter an operator')));
      }


    }else{
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('fill the field')));
    }
    setState(() {

    });

    }


  void clearCalculator() {
    num1Controller.text = '';
    num2Controller.text = '';
    operationController.text = '';
    result = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text('Simple Calculator',
        style: TextStyle(color: Colors.white),),
      ),
      body: Column(
        children: [
          SizedBox(height: 60,),

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                SizedBox(width: 100,
                  child: TextField(
                    controller: num1Controller,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'num1'
                    ),
                  ),
                ),

                SizedBox(width: 20),

                SizedBox(
                  width: 150,
                  child: TextField(
                    controller: operationController,
                    textInputAction: TextInputAction.next,

                    decoration: InputDecoration(
                    border: OutlineInputBorder(),
                      hintText: 'Enter operation'
                    ),
                  )
                ),

                SizedBox(width: 20,),

                SizedBox(
                  width: 100,
                  child: TextField(
                    controller: num2Controller,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'num 2'
                    ),
                  ),
                )
              ],
            ),
          ),

          Spacer(),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(100),
            child: Text(result.toString()),
          ),

          Spacer(),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(onPressed: (){

                calculate();

              }, child: Text('Calculate',
              style: TextStyle(color: Colors.white),),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.cyan
              ),),

              ElevatedButton(onPressed: (){
                clearCalculator();
                setState(() {

                });

              }, child: Text('Clear',
              style: TextStyle(
                color: Colors.white
              ),),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.cyan
                ),)
            ],
          ),
          SizedBox(height: 50,)
        ],
      ),
    );
  }
}
