import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dynamic_form/new_car/new_car.dart';

class ModelDropdownButton extends StatelessWidget {
  const ModelDropdownButton();

  @override
  Widget build(BuildContext context) {
    final models = context.select((NewCarBloc bloc) => bloc.state.models);
    final model = context.select((NewCarBloc bloc) => bloc.state.model);
    return DropdownButton<String>(
      key: const Key('newCarForm_model_dropdownButton'),
      items: models.isNotEmpty
          ? models.map((item) {
              return DropdownMenuItem(value: item, child: Text(item));
            }).toList()
          : const [],
      value: model,
      hint: const Text('Select a Model'),
      onChanged: (value) {
        context.read<NewCarBloc>().add(NewCarModelChanged(model: value));
      },
    );
  }
}
