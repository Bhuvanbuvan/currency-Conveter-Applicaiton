import 'package:flutter/material.dart';

class Conveterpage extends StatefulWidget {
  const Conveterpage({super.key});

  @override
  State<Conveterpage> createState() => _Conveterpage();
}

class _Conveterpage extends State<Conveterpage> {
  double result = 0;
  final TextEditingController tEController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: const BorderSide(
          color: Colors.black, width: 2.0, style: BorderStyle.solid),
      borderRadius: const BorderRadius.all(
        Radius.circular(60),
      ),
    );

    return Scaffold(
      backgroundColor: const Color.fromARGB(223, 17, 166, 116),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(223, 17, 166, 116),
        elevation: 0,
        title: const Text(
          "Currency Converter Applicaton",
          style: TextStyle(
              color: Colors.black, fontSize: 25.0, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              result.toString() + " INR",
              style: const TextStyle(
                fontSize: 42.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: tEController,
                onSubmitted: (value) => {print(value)},
                style: const TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                decoration: InputDecoration(
                  hintText: "Please Enter your USD Money",
                  hintStyle: const TextStyle(color: Colors.white),
                  prefixIcon: const Icon(Icons.monetization_on_outlined),
                  prefixIconColor: Colors.white,
                  enabledBorder: border,
                  focusedBorder: border,
                ),
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
              ),
            ),
            //Button
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  //result = tEController.text * 81;
                  setState(() {
                    result = double.parse(tEController.text) * 81;
                  });
                },
                style: TextButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    minimumSize: const Size(double.infinity, 50),
                    shape: const RoundedRectangleBorder()),
                child: const Text("data"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
