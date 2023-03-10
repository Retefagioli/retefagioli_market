class UserModel {
  final String id;
  final String name;
  final String surname;
  final DateTime? dob;
  final String email;
  final String? phone;
  final String? address;
  UserModel({
    required this.id,
    required this.name,
    required this.surname,
    this.dob,
    required this.email,
    this.phone,
    this.address,
  });
}
