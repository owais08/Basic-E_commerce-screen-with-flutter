import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 65,
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Column(
                  children: [
                    Image.asset(
                      "assets/person.png",
                      height: 170,
                      width: 170,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    // top: 10.0,
                    left: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "User",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30),
                      ),
                      Text(
                        "abc@gmail.com",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            color: Colors.black),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30.0),
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "logout",
                            style:
                                TextStyle(fontSize: 17, color: Colors.purple),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 17.0, top: 30),
            child: Text(
              "ACCOUNT INFORMATION",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    "Full Name",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    "User",
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                  trailing: Icon(Icons.edit),
                ),
                ListTile(
                  title: Text(
                    "Email",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    "User@gmail.com",
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                ),
                ListTile(
                  title: Text(
                    "Phone",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    "+900-786 01",
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                ),
                ListTile(
                  title: Text(
                    "Address",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    "New York,Random Street House No. 72",
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                ),
                ListTile(
                  title: Text(
                    "Gender",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    "Male",
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                ),
                ListTile(
                  title: Text(
                    "Date of Birth",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    "October 13, 1999",
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
