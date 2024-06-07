import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  ValueNotifier<int> _counter = ValueNotifier(0);

  void _incrementCounter() {
    _counter.value = _counter.value + 1;
  }

  void _decrementCounter() {
    _counter.value = _counter.value - 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: const Color.fromARGB(255, 179, 229, 235),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
              style: GoogleFonts.abhayaLibre(
                  fontSize: 18, fontWeight: FontWeight.bold),
            ),
            ValueListenableBuilder(
                valueListenable: _counter,
                builder: (BuildContext, int newValue, Widget? child) {
                  return Text(
                    '$newValue',
                    style: Theme.of(context).textTheme.headlineMedium,
                  );
                }),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: _incrementCounter,
                  child: Icon(
                    Icons.add,
                    size: 30,
                  ),
                ),
                // SizedBox(
                //   width: 50,
                // ),
                ElevatedButton(
                  onPressed: _decrementCounter,
                  child: Icon(
                    Icons.minimize,
                    size: 30,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
