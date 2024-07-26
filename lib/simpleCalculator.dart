
import 'package:flutter/material.dart';

class SimpleCalculator extends StatefulWidget {
  const SimpleCalculator({super.key});

  @override
  State<SimpleCalculator> createState() => _SimpleCalculatorState();
}

class _SimpleCalculatorState extends State<SimpleCalculator> {
  final  TextEditingController num1Controller = TextEditingController();

  final TextEditingController num2Controller = TextEditingController();

  double ? result;

  void calculate({required String operator}){


    if(num1Controller.text.isNotEmpty &&num2Controller.text.isNotEmpty ){


      switch(operator){
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
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('fill the field')));
    }
    setState(() {

    });


  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Simplistic calculator',
        style: TextStyle(
          color: Colors.white
        ),),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
        
            SizedBox(height: 50,),
            Container(
            width: double.infinity,
            height: 100,
                child: Container(
                    alignment: Alignment.centerRight,
                    padding: EdgeInsets.only(right: 24),
                    child: Text(
                      result != null ? result.toString(): '',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 34
                      ),
                    )
                )
        
        
        ),
        
            Divider(
            thickness: 5,
            indent: 10,
            endIndent: 10,),
        
            SizedBox(height: 40,),
        
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: num1Controller,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Enter a number'
                ),
              ),
            ),
        
            SizedBox(height: 40,),
        
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: num2Controller,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Enter a number'
                ),
              ),
            ),
        
            SizedBox(height: 40,),
        
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      )
                    ),
                      onPressed: (){
                        calculate(operator: '+');
        
        
                      },
                      child: Text('+',
                      style: TextStyle(
                        color: Colors.white
                      ),)),
        
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          )
                      ),
                      onPressed: (){
        
                        calculate(operator: '-');
                      },
                      child: Text('-',
                        style: TextStyle(
                            color: Colors.white
                        ),)),
        
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          )
                      ),
                      onPressed: (){
        
                        calculate(operator: '*');
                      },
                      child: Text('*',
                        style: TextStyle(
                            color: Colors.white
                        ),)),
        
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          )
                      ),
                      onPressed: (){
        
                        calculate(operator: '/');
                      },
                      child: Text('/',
                        style: TextStyle(
                            color: Colors.white
                        ),))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
