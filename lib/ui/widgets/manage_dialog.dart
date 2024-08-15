import 'package:banking/data/models/card_model.dart';
import 'package:banking/logic/bloc/card/card_bloc.dart';
import 'package:banking/utils/get_it.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class AddCardDialog extends StatefulWidget {
  @override
  _AddCardDialogState createState() => _AddCardDialogState();
}

class _AddCardDialogState extends State<AddCardDialog> {
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _cardNumberController = TextEditingController();
  final TextEditingController _expiryDateController = TextEditingController();
  final TextEditingController _balanceController = TextEditingController();

  final MaskTextInputFormatter _cardNumberFormatter = MaskTextInputFormatter(
    mask: '#### #### #### ####',
    filter: {"#": RegExp(r'[0-9]')},
  );

  final MaskTextInputFormatter _expiryDateFormatter = MaskTextInputFormatter(
    mask: '##/##',
    filter: {"#": RegExp(r'[0-9]')},
  );

  final _formKey = GlobalKey<FormState>();

  String? _validateFullName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Full Name is required';
    }
    return null;
  }

  String? _validateCardNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Card Number is required';
    }
    if (value.length != 19) {
      // Adjust length if necessary
      return 'Enter a valid Card Number';
    }
    return null;
  }

  String? _validateExpiryDate(String? value) {
    if (value == null || value.isEmpty) {
      return 'Expiry Date is required';
    }
    if (value.length != 5) {
      // Adjust length if necessary
      return 'Enter a valid Expiry Date (MM/YY)';
    }
    return null;
  }

  String? _validateBalance(String? value) {
    if (value == null || value.isEmpty) {
      return 'Balance is required';
    }
    if (double.tryParse(value) == null) {
      return 'Enter a valid number';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Add a Card'),
      content: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                controller: _fullNameController,
                decoration: const InputDecoration(
                  labelText: 'Full Name',
                ),
                validator: _validateFullName,
              ),
              TextFormField(
                controller: _cardNumberController,
                decoration: const InputDecoration(
                  labelText: 'Card Number',
                ),
                keyboardType: TextInputType.number,
                inputFormatters: [_cardNumberFormatter],
                validator: _validateCardNumber,
              ),
              TextFormField(
                controller: _expiryDateController,
                decoration: const InputDecoration(
                  labelText: 'Expiry Date (MM/YY)',
                ),
                keyboardType: TextInputType.number,
                inputFormatters: [_expiryDateFormatter],
                validator: _validateExpiryDate,
              ),
              TextFormField(
                controller: _balanceController,
                decoration: const InputDecoration(
                  labelText: 'Balance',
                ),
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                validator: _validateBalance,
              ),
            ],
          ),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () {
            if (_formKey.currentState?.validate() ?? false) {
              getIt.get<CardBloc>().add(
                    CardEvent.addCard(
                      CardModel(
                        fullName: _fullNameController.text,
                        number: _cardNumberController.text,
                        expiryDate: _expiryDateController.text,
                        balance: double.tryParse(_balanceController.text) ?? 0,
                      ),
                    ),
                  );
              Navigator.of(context).pop();
            }
          },
          child: const Text('Add'),
        ),
      ],
    );
  }
}
