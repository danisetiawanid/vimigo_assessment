import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vimigo_assessment/model/contact_model.dart';
import 'dart:convert';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<ContactModel> contacts = [];
  Future<void> readJsonFile() async {
    final String response = await rootBundle.loadString('assets/contact.json');
    final contactData = await json.decode(response);
    print(response);
    var list = contactData["data"] as List<dynamic>;
    setState(() {
      contacts = list.map((e) => ContactModel.fromJson(e)).toList();
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    readJsonFile();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vimigo Contact'),
      ),
      body: Center(
        child: ListView.builder(
            itemCount: contacts.length,
            itemBuilder: (BuildContext context, index) {
              return ListTile(
                title: Text(
                  contacts[index].checkin.toString(),
                ),
              );
            }),
      ),
    );
  }
}
