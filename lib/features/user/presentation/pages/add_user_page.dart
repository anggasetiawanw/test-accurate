import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/entities/city_entities.dart';
import '../../domain/entities/user_entities.dart';
import '../blocs/city/city_bloc.dart';
import '../blocs/users/user_bloc.dart';

@RoutePage()
class AddUserPage extends StatefulWidget {
  const AddUserPage({super.key});

  @override
  State<AddUserPage> createState() => _AddUserPageState();
}

class _AddUserPageState extends State<AddUserPage> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final cityController = TextEditingController();
  final addressController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String _selectedCity = '';

  @override
  void initState() {
    super.initState();
    context.read<CityBloc>().add(const CityEvent.getCity());
  }

  Future<void> _addUser(String name, String email, String phoneNumber, String city) async {
    // Post data to the API
    try {
      User user = User(
        name: name,
        email: email,
        phoneNumber: phoneNumber,
        city: city,
        address: addressController.text,
      );
      context.read<UserBloc>().add(UserEvent.addUser(user: user));
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to add user: $e')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add User'),
      ),
      body: BlocConsumer<UserBloc, UserState>(
        listener: (context, state) {
          state.maybeMap(
            added: (_) {
              Navigator.of(context).pop();
            },
            failed: (value) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(value.failure.message),
                ),
              );
            },
            orElse: () {},
          );
        },
        builder: (context, state) {
          return state.maybeMap(
            loading: (_) => const Center(child: CircularProgressIndicator()),
            orElse: () {
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: Form(
                  key: _formKey,
                  child: ListView(
                    children: [
                      TextFormField(
                        controller: nameController,
                        decoration: const InputDecoration(labelText: 'Name'),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter a name';
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        controller: emailController,
                        decoration: const InputDecoration(labelText: 'Email'),
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter an email';
                          }
                          // Optional: Add more complex email validation
                          return null;
                        },
                      ),
                      TextFormField(
                        controller: phoneNumberController,
                        decoration: const InputDecoration(labelText: 'Phone Number'),
                        keyboardType: TextInputType.phone,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter a phone number';
                          }
                          if (!value.startsWith('08')) {
                            return 'Phone number must start with 08';
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        controller: addressController,
                        decoration: const InputDecoration(labelText: 'Address'),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter an address';
                          }
                          return null;
                        },
                      ),
                      BlocBuilder<CityBloc, CityState>(
                        builder: (context, state) {
                          return state.map(
                            initial: (_) => const SizedBox(),
                            loading: (_) => const SizedBox(),
                            loaded: (data) {
                              return SizedBox(
                                child: DropdownButton<String>(
                                  value: _selectedCity.isEmpty ? null : _selectedCity,
                                  hint: const Text('Filter by city'),
                                  onChanged: (value) {
                                    if (value != null) {
                                      setState(() {
                                        _selectedCity = value;
                                      });
                                    }
                                  },
                                  items: [
                                    ..._getCityDropdownItems(data.cities), // Method to get dropdown items for cities
                                  ],
                                ),
                              );
                            },
                            failed: (_) => const SizedBox(),
                          );
                        },
                      ),
                      ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            _addUser(
                              nameController.text,
                              emailController.text,
                              phoneNumberController.text,
                              _selectedCity,
                            );
                          }
                        },
                        child: const Text('Add User'),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }

  List<DropdownMenuItem<String>> _getCityDropdownItems(List<City> cities) {
    // Replace this with your actual list of cities from your user data
    return cities.map((city) {
      return DropdownMenuItem(
        value: city.name,
        child: Text(city.name),
      );
    }).toList();
  }
}
