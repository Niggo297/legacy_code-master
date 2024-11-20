import 'package:flutter/material.dart';
import 'package:zeit_erfassung/_general/helpers/logger.dart';

/// Generic dropwdown dialog. It is used to quickly realise a common usecase
/// for dropdown dialogs. The dropdown dialog consists of a title, some
/// messages before the dropdown element, the dropdown element, then some
/// messages after the dropdown element and two buttons. The first one
/// is used to cancel the dialog (which leads to no value being returned to
/// the caller) and the second one is used to confirm the dropdown selection and
/// leads to the selected object being returned to the caller). Returning happens
/// through the use of the `showDialog` function.
///
/// - [title]: title to be displayed on top of the dialog
/// - [optionValues]: list of objects from which to choose (the potential return values)
/// - [optionLabels]: list of strings that represents the menu entries in the dropdown menu.
///   If [optionLabels] are not provided, the String representations of the according [optionValues]
///   are used instead.
/// - [messagesBefore]: list of strings that are displayed before the dropdown menu
/// - [messagesAfter]: list of strings that are displayed after the dropdown menu
/// - [textYes]: The text to be displayed on the confirm button
/// - [textNo]: The text to be displayed on the cancel button
/// - [iconYes]: The icon to be displayed on the confirm button
/// - [iconNo]: The icon to be displayed on the cancel button
/// - [chosenOption]: The default value of the dropdown menu. If null, the
/// dropdown element will start with no selected value.
/// - [key]: The key of the widget.
/// - Returns via `showDialog` the chosen object from [optionValues].
///
/// Example:
/// ```dart
/// abstract class Sports {}
/// class Soccer extends Sports {}
/// class Basketball extends Sports {}
/// ...
/// final selected = await showDialog<Sport>(
///  DropdownDialog(
///   title: 'Choose a sport',
///   optionValues: [Soccer(), Basketball()],
///   optionLabels: ['Soccer', 'Basketball'],
/// ));
/// ```
class DropdownDialog extends StatefulWidget {
  /// Creates a [DropdownDialog] widget.
  const DropdownDialog({
    required this.title,
    required this.optionValues,
    this.optionLabels,
    this.messagesBefore = const [],
    this.messagesAfter = const [],
    this.textYes = 'Ja',
    this.textNo = 'Nein',
    this.iconYes = Icons.check,
    this.iconNo = Icons.close,
    this.chosenOption,
    Key? key,
  }) : super(key: key);

  /// Title to be displayed on top of the dialog
  final String title;

  /// List of strings (representing paragraphs), shown before the dropdown field
  final List<String> messagesBefore;

  /// List of strings (representing paragraphs), shown after the dropdown field
  final List<String> messagesAfter;

  /// Text to show on the positive button
  final String textYes;

  /// Text to show on the negative button
  final String textNo;

  /// Icon to show on the positive button
  final IconData iconYes;

  /// Icon to show on the negative button
  final IconData iconNo;

  // ignore: public_member_api_docs
  final Object? chosenOption;
  // ignore: public_member_api_docs
  final List<Object?> optionValues;
  // ignore: public_member_api_docs
  final List<String>? optionLabels;

  @override
  State<DropdownDialog> createState() => _DropdownDialogState(
        chosenOption: chosenOption,
        optionValues: optionValues,
        optionLabels: optionLabels,
      );
}

class _DropdownDialogState extends State<DropdownDialog> {
  _DropdownDialogState({
    required this.optionValues,
    required this.optionLabels,
    this.chosenOption,
  });
  Object? chosenOption;
  List<Object?> optionValues;
  List<String>? optionLabels;
  static final _logger = const Logger('ConfirmationDialog', false);

  @override
  Widget build(BuildContext context) => Dialog(
        child: ConstrainedBox(
          constraints:
              BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.8),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    widget.title,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  for (final message in widget.messagesBefore) ...[
                    Text(
                      message,
                      style: const TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                  ],
                  // Dialog-Element
                  DropdownButtonHideUnderline(
                    child: DropdownButton(
                      dropdownColor: Colors.grey[200],
                      value: chosenOption,
                      isDense: true,
                      onChanged: (newValue) {
                        _logger('newValue: $newValue');
                        setState(() {
                          chosenOption = newValue;
                        });
                      },
                      items: [
                        for (var i = 0; i < optionValues.length; i++)
                          DropdownMenuItem(
                            value: optionValues[i],
                            child: optionLabels == null
                                ? Text(optionValues[i].toString())
                                : Text(optionLabels![i]),
                          ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  for (final message in widget.messagesAfter) ...[
                    Text(
                      message,
                      style: const TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                  ],
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          child: Row(
                            children: [
                              Icon(widget.iconNo),
                              Expanded(
                                  child: Center(child: Text(widget.textNo))),
                            ],
                          ),
                          onPressed: () {
                            _logger('Cancel pressed. Returning null.');
                            Navigator.of(context).pop();
                          },
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Expanded(
                        child: ElevatedButton(
                          child: Row(
                            children: [
                              Icon(widget.iconYes),
                              Expanded(
                                  child: Center(child: Text(widget.textYes))),
                            ],
                          ),
                          onPressed: () {
                            _logger(
                                'Confirm pressed. Returning chosenOption: $chosenOption');
                            Navigator.of(context).pop(chosenOption);
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}
