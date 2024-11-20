import 'package:flutter/material.dart';
import 'package:zeit_erfassung/_general/helpers/logger.dart';

/// Widget for a confirmation dialog.
class ConfirmationDialog extends StatelessWidget {
  /// Creates a confirmation dialog which is meant to be displayed
  /// using `showDialog`.
  /// - title: title to be displayed on top of the dialog
  /// - messages: list of strings (representing paragraphs)
  /// - textYes: text to show on the positive button
  /// - textNo: text to show on the negative button
  /// - onYes: callback function to be called on positive button click
  /// - iconYes: icon to show on the positive button
  /// - iconNo: icon to show on the negative button
  /// - Returns via `showDialog`.
  ///
  /// Example:
  /// ```dart
  /// final confirmed = await showDialog<bool>(
  ///   ConfirmationDialog(
  ///     title: 'Some title,
  ///     messages: ['First line', 'Second line'],
  ///   ));
  /// if (confirmed) {
  ///   ... // confirmed is now true or false
  /// }
  /// ```
  /// The <bool> type annotation helps with code completion and
  /// compile time type checking. It is not required. The ConfirmationDialog
  /// will always return a bool when nested in showDialog.
  const ConfirmationDialog({
    required this.title,
    required this.messages,
    this.textYes = 'Ja',
    this.textNo = 'Nein',
    this.iconYes = Icons.check,
    this.iconNo = Icons.close,
    Key? key,
  }) : super(key: key);

  static final _logger = const Logger('ConfirmationDialog', false);

  /// Title to be displayed on top of the dialog
  final String title;

  /// List of strings (representing paragraphs)
  final List<String> messages;

  /// Text to show on the positive button
  final String textYes;

  /// Text to show on the negative button
  final String textNo;

  /// Icon to show on the positive button
  final IconData iconYes;

  /// Icon to show on the negative button
  final IconData iconNo;

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
                    title,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  for (final message in messages) ...[
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
                              Icon(iconNo),
                              Expanded(child: Center(child: Text(textNo))),
                            ],
                          ),
                          onPressed: () {
                            _logger('No-button pressed. Returning false.',
                                'build-closure');
                            Navigator.of(context).pop(false);
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
                              Icon(iconYes),
                              Expanded(child: Center(child: Text(textYes))),
                            ],
                          ),
                          onPressed: () {
                            _logger('Yes-button pressed. Returning true.',
                                'build-closure');
                            Navigator.of(context).pop(true);
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
