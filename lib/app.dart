import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dynamic_form/new_car/new_car.dart';
import 'package:flutter_dynamic_form/new_car_repository.dart';

class MyApp extends StatelessWidget {
  const MyApp({required this.newCarRepository, super.key});

  final NewCarRepository newCarRepository;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: newCarRepository,
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: NewCarPage(),
      ),
    );
  }
}
