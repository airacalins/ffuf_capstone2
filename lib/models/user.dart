// ignore_for_file: public_member_api_docs, sort_constructors_first
class User {
  String id;
  String firstName;
  String lastName;
  String imageUrl;
  String email;
  String password;

  User({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.imageUrl,
    required this.email,
    required this.password,
  });
}
