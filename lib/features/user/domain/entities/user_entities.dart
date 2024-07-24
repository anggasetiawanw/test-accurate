import 'package:equatable/equatable.dart';

class User extends Equatable {
  final String id;
  final String name;
  final String email;
  final String phoneNumber;
  final String city;
  final String address;

  const User({
    this.id = '',
    this.name = '',
    this.email = '',
    this.phoneNumber = '',
    this.city = '',
    this.address = '',
  });

  @override
  List<Object?> get props => [id, name, email, phoneNumber, city, address];
}
