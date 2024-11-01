import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BiodataView extends StatefulWidget {
  const BiodataView({super.key});

  @override
  State<BiodataView> createState() => _BiodataViewState();
}

class _BiodataViewState extends State<BiodataView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
        title: Text('Profile Saya'),
        centerTitle: true,
        leading: BackButton(),
        actions: [
          PopupMenuButton(itemBuilder: (BuildContext context) {
            return <PopupMenuEntry>[
              PopupMenuItem(
                child:
                Text('Edit Profile', style: TextStyle(color: Colors.blueAccent)),
                onTap: () {},
              ),
            ];
          }),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(20),
            child: Center(
              child: Column(
                children: [
                  Container(
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            CircleAvatar(
                                radius: 64,
                                backgroundImage: NetworkImage(
                                    "https://i.pinimg.com/736x/85/bc/0d/85bc0d636e50371c4399d46610e61f07.jpg")
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Color.fromARGB(240, 255, 240, 246),
                    ),
                    padding: EdgeInsets.all(15),
                    child: Column(
                      children: [
                        SizedBox(height: 15),
                        TextField(
                          controller:
                          TextEditingController(text: "Imelda Hepi Saputri"),
                          readOnly: true,
                          decoration: InputDecoration(
                            labelText: "Name",
                            prefix: Icon(Icons.account_circle),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        TextField(
                          controller:
                          TextEditingController(text: "Imel/Imelda"),
                          readOnly: true,
                          decoration: InputDecoration(
                            labelText: "Nickname",
                            prefix: Icon(Icons.account_circle),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Color.fromARGB(240, 255, 240, 246),
                    ),
                    padding: EdgeInsets.all(15),
                    child: Column(
                      children: [
                        SizedBox(height: 15),
                        TextField(
                          controller:
                          TextEditingController(text: "Kabupaten Malang"),
                          readOnly: true,
                          decoration: InputDecoration(
                            labelText: "Address",
                            prefix: Icon(Icons.home),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        TextField(
                          controller:
                          TextEditingController(text: "2007-01-01"),
                          readOnly: true,
                          decoration: InputDecoration(
                            labelText: "Birthday",
                            prefix: Icon(Icons.calendar_today),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        TextField(
                          controller:
                          TextEditingController(text: "Capricorn"),
                          readOnly: true,
                          decoration: InputDecoration(
                            labelText: "Zodiac",
                            prefix: Icon(Icons.transgender),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}