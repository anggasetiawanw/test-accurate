import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_accurate/core/router/app_router.gr.dart';

import '../../domain/entities/city_entities.dart';
import '../blocs/city/city_bloc.dart';
import '../blocs/users/user_bloc.dart';

@RoutePage()
class UserHomePage extends StatefulWidget {
  const UserHomePage({super.key});

  @override
  State<UserHomePage> createState() => _UserHomePageState();
}

class _UserHomePageState extends State<UserHomePage> {
  final TextEditingController _searchController = TextEditingController();
  bool _ascending = true;
  String _selectedCity = '';

  @override
  void initState() {
    super.initState();
    context.read<UserBloc>().add(const UserEvent.getUser());
    context.read<CityBloc>().add(const CityEvent.getCity());
  }

  void _fetchSearchByName(String name) {
    context.read<UserBloc>().add(UserEvent.getUserByName(name: name));
  }

  void _clearSearch() {
    _selectedCity = '';
    _searchController.clear();
    context.read<UserBloc>().add(const UserEvent.getUser());
  }

  void _sortUsers(bool ascending) {
    context.read<UserBloc>().add(UserEvent.sortUserData(isAscending: ascending));
  }

  void _filterUsersByCity(String city) {
    context.read<UserBloc>().add(UserEvent.getUserByCity(city: city));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          AutoRouter.of(context).push(const AddUserRoute()).then((value) {
            context.read<UserBloc>().add(const UserEvent.getUser());
          });
        },
        child: const Icon(Icons.add),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _searchController,
                    decoration: const InputDecoration(
                      hintText: 'Search by name',
                      border: OutlineInputBorder(),
                    ),
                    onSubmitted: _fetchSearchByName,
                  ),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () => _fetchSearchByName(_searchController.text),
                  child: const Text('Search'),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: _clearSearch,
                  child: const Text('Clear'),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                DropdownButton<bool>(
                  value: _ascending,
                  onChanged: (value) {
                    if (value != null) {
                      setState(() {
                        _ascending = value;
                      });
                      _sortUsers(_ascending);
                    }
                  },
                  items: const [
                    DropdownMenuItem(
                      value: true,
                      child: Text('Sort Ascending'),
                    ),
                    DropdownMenuItem(
                      value: false,
                      child: Text('Sort Descending'),
                    ),
                  ],
                ),
                const SizedBox(width: 16),
                BlocBuilder<CityBloc, CityState>(
                  builder: (context, state) {
                    return state.map(
                      initial: (_) => const SizedBox(),
                      loading: (_) => const SizedBox(),
                      loaded: (data) {
                        return DropdownButton<String>(
                          value: _selectedCity.isEmpty ? null : _selectedCity,
                          hint: const Text('Filter by city'),
                          onChanged: (value) {
                            if (value != null) {
                              setState(() {
                                _selectedCity = value;
                              });
                              _filterUsersByCity(_selectedCity);
                            }
                          },
                          items: [
                            const DropdownMenuItem(
                              value: '',
                              child: Text('All Cities'),
                            ),
                            ..._getCityDropdownItems(data.cities), // Method to get dropdown items for cities
                          ],
                        );
                      },
                      failed: (_) => const SizedBox(),
                    );
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: BlocBuilder<UserBloc, UserState>(
              builder: (context, state) {
                return state.map(
                  added: (_) {
                    return const SizedBox();
                  },
                  initial: (_) => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  loading: (_) => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  loaded: (data) => ListView.builder(
                    itemCount: data.users.length,
                    itemBuilder: (context, index) {
                      final user = data.users[index];
                      return Container(
                        margin: const EdgeInsets.all(8),
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Name: ${user.name}'),
                            Text('Email: ${user.email}'),
                            Text('Phone Number: ${user.phoneNumber}'),
                            Text('City: ${user.city}'),
                            Text('Address: ${user.address}'),
                          ],
                        ),
                      );
                    },
                  ),
                  failed: (failure) => Center(
                    child: Text(failure.failure.message),
                  ),
                );
              },
            ),
          ),
        ],
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
