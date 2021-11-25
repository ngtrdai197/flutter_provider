import 'package:flutter/material.dart';
import 'package:flutter_provider/constants/app_routes.dart';
import 'package:flutter_provider/providers/product_provider.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final productProvider = Provider.of<ProductProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            InkWell(
              child: Container(
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.black38),
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
                child: Text("Set product"),
              ),
              onTap: () {
                productProvider.setProduct(name: 'Macbook Pro', price: 434.54);
                Navigator.of(context).pushNamed(Routing.PRODUCT_LIST);
              },
            ),
            SizedBox(height: 12.0,),
            InkWell(
              child: Container(
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.black38),
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
                child: Text("No set product"),
              ),
              onTap: () {
                productProvider.reset();
                Navigator.of(context).pushNamed(Routing.PRODUCT_LIST);
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
