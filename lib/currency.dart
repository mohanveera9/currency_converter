import 'package:flutter/material.dart';

class CurrencyConverterPage extends StatefulWidget{
  const CurrencyConverterPage({super.key});
  @override
  State<CurrencyConverterPage> createState()=> _CurrencyConveeterState();
}

class _CurrencyConveeterState extends State<CurrencyConverterPage>{
      double result=0;
    final TextEditingController textEditingController= TextEditingController();
  @override
    Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: const BorderSide(
        width: 2.0,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.circular(5),
    );
    return Scaffold(
      backgroundColor: Colors.cyan[700],
      appBar: AppBar(
        backgroundColor: Colors.cyan[800],
        elevation: 0,
        centerTitle:true,
        title: const Text("Currency Converter",
        style: TextStyle(
          color: Colors.white,
          fontSize: 28,
          fontWeight: FontWeight.w500,
        ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                Text(
                'INR ${result!=0 ?result.toStringAsFixed(3): result.toStringAsFixed(0)}',
                style:const TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
              TextField(
                controller: textEditingController,
                style: const TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  hintText: 'Please Enter the amount in USD',
                  hintStyle: const TextStyle(
                    color: Colors.black,
                  ),
                  prefixIcon: const Icon(Icons.monetization_on_outlined),
                  prefixIconColor: Colors.black,
                  filled: true,
                  focusColor: const Color.fromARGB(255, 255, 255, 255),
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
          
              Container(height: 10,),

              ElevatedButton(
                onPressed:(){
                 setState(() {
                 result= double.parse(textEditingController.text)*83.52;
                 });
                },
                style: TextButton.styleFrom(
                  backgroundColor:Colors.black,
                  foregroundColor: Colors.white,
                  minimumSize:const Size(double.infinity,50),
                  elevation: 35,
                  shape:  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                 child: const Text('Convert'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



