import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dynamic_form/new_car/new_car.dart';

class FormSubmitButton extends StatelessWidget {
  const FormSubmitButton();

  @override
  Widget build(BuildContext context) {
    final state = context.watch<NewCarBloc>().state;

    void onFormSubmitted() {
      ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(
          SnackBar(
            content: Text(
              'Submitted ${state.brand} ${state.model} ${state.year}',
            ),
          ),
        );
    }

    return ElevatedButton(
      onPressed: state.isComplete ? onFormSubmitted : null,
      child: const Text('Submit'),
    );
  }
}
