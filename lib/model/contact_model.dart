class ContactModel {
  String user = '';
  String? phone;
  DateTime? checkin;

  ContactModel({
    required this.user,
    this.phone,
    this.checkin,
  });

  factory ContactModel.fromJson(Map<String, dynamic> json) {
    return ContactModel(
      user: json['user'],
      phone: json['phone'],
      checkin: DateTime.parse(json['check-in']),
    );
  }
}
