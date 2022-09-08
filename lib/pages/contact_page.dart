import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:vimigo_assessment/model/contact_model.dart';
import 'package:vimigo_assessment/provider/contact_provider.dart';
import 'package:vimigo_assessment/widget/contact_card.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    ContactProvider contactProvider = Provider.of<ContactProvider>(context);

    Widget contactDani() {
      return Container(
        child: Column(
          children: contactProvider.contacts
              .map(
                (e) => ContactCard(e),
              )
              .toList(),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('data'),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            contactDani(),
          ],
        ),
      ),
    );
  }
}
