import 'package:equatable/equatable.dart';

class User extends Equatable {
  final String id;
  final String name;
  final String email;
  final String phoneNumber;
  final String city;

  const User({
    this.id = '',
    this.name = '',
    this.email = '',
    this.phoneNumber = '',
    this.city = '',
  });

  @override
  List<Object?> get props => [id, name, email, phoneNumber, city];
}
