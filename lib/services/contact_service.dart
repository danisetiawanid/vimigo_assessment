import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:vimigo_assessment/model/contact_model.dart';

class ContactService {
  Future<List<ContactModel>> getContact() async {
    final String response = await rootBundle.loadString('assets/contact.json');
    List contactData = jsonDecode(response)['data'];
    List<ContactModel> contacts = [];

    for (var item in contactData) {
      contacts.add(ContactModel.fromJson(item));
      contacts.sort((a, b) {
        return DateTime.parse(b.checkin.toString())
            .compareTo(DateTime.parse(a.checkin.toString()));
      });
    }
    return contacts;
  }
}
