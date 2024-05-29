import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dynamic_form/new_car/new_car.dart';

class YearDropdownButton extends StatelessWidget {
  const YearDropdownButton();

  @override
  Widget build(BuildContext context) {
    final years = context.select((NewCarBloc bloc) => bloc.state.years);
    final year = context.select((NewCarBloc bloc) => bloc.state.year);
    return DropdownButton<String>(
      key: const Key('newCarForm_year_dropdownButton'),
      items: years.isNotEmpty
          ? years.map((item) {
              return DropdownMenuItem(value: item, child: Text(item));
            }).toList()
          : const [],
      value: year,
      hint: const Text('Select a Year'),
      onChanged: (value) {
        context.read<NewCarBloc>().add(NewCarYearChanged(year: value));
      },
    );
  }
}
