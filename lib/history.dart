import 'package:flutter/material.dart';

class History extends StatefulWidget {
  const History({Key? key}) : super(key: key);

  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            "Ecom App UI",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        actions: [
          IconButton(
            color: Colors.black,
            onPressed: () {},
            icon: Icon(
              Icons.notifications,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Username",
                    hintText: "Username",
                    suffixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5.0),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0, bottom: 22),
                child: Text(
                  "History",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              history1("Iphone 12", "assets/iphone 12.jpg"),
              history1("Note 20 Ultra", "assets/note 20 ultra.jpg"),
              history1("Macbook Air", "assets/macbook air.jpg"),
              history1("Macbook Pro", "assets/Macbook Pro.jpg"),
              history1("Gaming PC", "assets/Gaming PC.jpg"),
              history1("Backlit Keyboard", "assets/Backlit-Keyboard.jpg"),
              history1("Mercedes", "assets/Mercedes.jpg"),
              history1("Roadster", "assets/Roadster-car.jpg"),
              history1("Roadster Bike", "assets/Roadster-Bike.jpg"),
              history1("Royal Field", "assets/Royal-Field.jpg"),
            ],
          ),
        ],
      ),
    );
  }
}

Widget history1(var name, var img) {
  return ListTile(
    leading: CircleAvatar(
      backgroundImage: AssetImage(img),
      radius: 30,
    ),
    title: Padding(
      padding: const EdgeInsets.only(bottom: 7.0),
      child: Text(
        name,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),
      ),
    ),
    subtitle: Row(
      children: [
        IconTheme(
          data: IconThemeData(color: Colors.yellow[400]),
          child: Icon(Icons.star_rounded),
        ),
        Text(
          "5.0 (23 Reviews)",
        ),
      ],
    ),
    trailing: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("\$10"),
      ],
    ),
  );
}
