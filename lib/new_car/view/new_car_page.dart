import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dynamic_form/new_car/new_car.dart';
import 'package:flutter_dynamic_form/new_car_repository.dart';

import 'new_car_form.dart';

class NewCarPage extends StatelessWidget {
  const NewCarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (_) => NewCarBloc(
          newCarRepository: context.read<NewCarRepository>(),
        )..add(const NewCarFormLoaded()),
        child: const NewCarForm(),
      ),
    );
  }
}
