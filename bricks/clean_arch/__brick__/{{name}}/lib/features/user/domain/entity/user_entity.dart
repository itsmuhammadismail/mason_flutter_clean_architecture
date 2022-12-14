import 'package:equatable/equatable.dart';

class User extends Equatable {
  final String name, token, phone;

  const User({
    required this.name,
    required this.token,
    required this.phone,
  });

  factory User.initial() => const User(
        name: '',
        token: '',
        phone: '',
      );

  @override
  List<Object> get props => [name, token, phone];

  @override
  bool get stringify => true;

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      name: json['name'],
      token: json['token'],
      phone: json['phone'],
    );
  }
}
