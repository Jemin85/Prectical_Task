import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Resume App",
          style: TextStyle(
              fontSize: 16, color: Colors.white, fontWeight: FontWeight.w500),
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.add,color: Colors.white,))
        ],
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(15),

            child: const ListTile(
              leading: Text(
                "1",
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),
              title: Text(
                "Jemin",
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
              subtitle: Text(
                "Sukhadiya",
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ),
          ),
          const Divider(color:Colors.grey)
        ],
      ),
    );
  }
}
