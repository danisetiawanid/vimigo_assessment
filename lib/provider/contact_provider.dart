import 'package:flutter/cupertino.dart';
import 'package:vimigo_assessment/model/contact_model.dart';
import 'package:vimigo_assessment/services/contact_service.dart';

class ContactProvider with ChangeNotifier {
  List<ContactModel> _contact = [];
  List<ContactModel> get contacts => _contact;

  set contacts(List<ContactModel> contacts) {
    _contact = contacts;
    notifyListeners();
  }

  Future<void> getContacts() async {
    try {
      List<ContactModel> contacts = await ContactService().getContact();
      _contact = contacts;
      notifyListeners();
    } catch (e) {
      print(e);
    }
  }
}
