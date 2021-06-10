import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
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
      body: Padding(
        padding: EdgeInsets.all(12.0),
        child: ListView(
          children: [
            cont1("Iphone 12", "assets/iphone 12.jpg"),
            SizedBox(
              height: 10,
            ),
            cont1("Note 20 Ultra", "assets/note 20 ultra.jpg"),
            SizedBox(
              height: 10,
            ),
            cont1("Macbook Air", "assets/macbook air.jpg"),
            SizedBox(
              height: 10,
            ),
            cont1("Macbook Pro", "assets/Macbook Pro.jpg"),
            SizedBox(
              height: 10,
            ),
            cont1("Gaming PC", "assets/Gaming PC.jpg"),
          ],
        ),
      ),
    );
  }
}

Widget cont1(var name, var img) {
  return Container(
    height: 120,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(
        Radius.circular(5),
      ),
    ),
    child: Row(
      children: [
        Container(
          width: 150,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(img),
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                name,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  IconTheme(
                    data: IconThemeData(color: Colors.yellowAccent),
                    child: Icon(Icons.star_rounded),
                  ),
                  Text("5.0 (23 Review)"),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("20 Pieces"),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      "\$90",
                      style: TextStyle(
                        color: Colors.purple,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
              Text("Quantity: 1"),
            ],
          ),
        )
      ],
    ),
  );
}
