import 'package:flutter/material.dart';
import 'package:flutter_dynamic_form/new_car/view/brand_dropdown_button.dart';
import 'package:flutter_dynamic_form/new_car/view/form_submit_button.dart';
import 'package:flutter_dynamic_form/new_car/view/model_dropdown_button.dart';
import 'package:flutter_dynamic_form/new_car/view/year_dropdown_button.dart';

class NewCarForm extends StatelessWidget {
  const NewCarForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment(0, -3 / 4),
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            BrandDropdownButton(),
            ModelDropdownButton(),
            YearDropdownButton(),
            FormSubmitButton(),
          ],
        ),
      ),
    );
  }
}
