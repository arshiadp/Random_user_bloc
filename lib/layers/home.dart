import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:random_users/blocs/users_bloc/bloc/users_bloc.dart';
import 'package:random_users/layers/result_page.dart';

class Home extends StatelessWidget {
  Home({super.key});

  final _formKey = GlobalKey<FormState>();
  final numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Random User Application')),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Number Of Users: (Default=10)',
                ),
                controller: numberController,
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value == '') {
                    return null; //success
                  }
                  try {
                    int.parse(value);
                  } catch (e) {
                    return 'Enter a valid number';
                  }
                  return null; //success
                },
              ),
              const SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => BlocProvider(
                          create: (context) => UsersBloc()
                            ..add(
                              UsersFetchData(
                                numberOfUsers: numberController.text,
                              ),
                            ),
                          child: ResultPage(),
                        ),
                      ),
                    );
                  }
                },
                child: const Text('Continue', style: TextStyle(fontSize: 25)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
