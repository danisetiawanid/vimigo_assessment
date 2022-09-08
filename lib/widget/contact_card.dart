import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vimigo_assessment/model/contact_model.dart';

class ContactCard extends StatelessWidget {
  final ContactModel _contactModel;
  const ContactCard(this._contactModel, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      child: Column(
        children: [
          Text(_contactModel.user.toString()),
          Text(_contactModel.checkin.toString() + ' Day Ago'),
        ],
      ),
    );
  }
}
