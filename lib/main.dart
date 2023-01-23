import 'package:flutter/material.dart';
import 'FoodMenu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyApp',
      home: MyHomePage(),
      theme: ThemeData(primarySwatch: Colors.green),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<FoodMenu> menu = [
    FoodMenu("กุ้งเผา", "500"),
    FoodMenu("กะเพราหมูสับ", "80"),
    FoodMenu("ส้มตำ", "60"),
    FoodMenu("ผัดไทย", "40")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("เลือก เมนู"),
      ),
      body: ListView.builder(
          itemCount: menu.length,
          itemBuilder: (BuildContext context, int index) {
            FoodMenu food = menu[index];
            return ListTile(
              title: Text(
                food.name,
                style: TextStyle(fontSize: 30),
              ),
              subtitle: Text("ราคา ${food.price} บาท"),
            );
          }),
    );
  }
}
