import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
  @override
  void initState() {
    super.initState();
    context.read<UserBloc>().add(const UserEvent.getUser());
  }

  void _fetchSearchByName(String name) {
    context.read<UserBloc>().add(UserEvent.getUserByName(name: name));
  }

  void _clearSearch() {
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
                const SizedBox(width: 8),
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
              ],
            ),
          ),
          Expanded(
            child: BlocBuilder<UserBloc, UserState>(
              builder: (context, state) {
                return state.map(
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
}
