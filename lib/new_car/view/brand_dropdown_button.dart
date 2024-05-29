import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dynamic_form/new_car/new_car.dart';

class BrandDropdownButton extends StatelessWidget {
  const BrandDropdownButton();

  @override
  Widget build(BuildContext context) {
    final brands = context.select((NewCarBloc bloc) => bloc.state.brands);
    final brand = context.select((NewCarBloc bloc) => bloc.state.brand);
    return DropdownButton<String>(
      key: const Key('newCarForm_brand_dropdownButton'),
      items: brands.isNotEmpty
          ? brands.map((item) {
              return DropdownMenuItem(
                value: item,
                child: Text(item),
              );
            }).toList()
          : const [],
      value: brand,
      hint: const Text('Select a Brand'),
      onChanged: (value) =>
          context.read<NewCarBloc>().add(NewCarBrandChanged(brand: value)),
    );
  }
}
