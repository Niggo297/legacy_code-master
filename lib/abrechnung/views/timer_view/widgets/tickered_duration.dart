import 'package:flutter/material.dart';
import 'package:zeit_erfassung/_general/helpers/constants.dart';
// import 'package:zeit_erfassung/helpers/logger.dart';

/// Widget showing a duration on screen.
class TickeredDuration extends StatelessWidget {
  /// Constructs the widget showing a duration on screen.
  const TickeredDuration({
    required this.hint,
    required this.value,
    required this.icon,
    required this.isActive,
    required this.showActivity,
    Key? key,
  }) : super(key: key);

  /// The hint text to show
  final String hint;

  /// The value to show
  final String value;

  /// The icon to show
  final IconData icon;

  /// Whether the duration is active or not
  final bool isActive;

  /// Whether to show the activity or not
  final bool showActivity;
  // static final _logger = const Logger('TickeredDuration', false);

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: layColorPrimary,
            ),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(color: isActive ? layColorPrimary : Colors.grey),
                child: Center(
                  child: Text(
                    '$hint',
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      height: 1.2,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(child: FittedBox(child: Icon(icon, color: isActive ? Colors.black : Colors.grey))),
                    Expanded(
                        flex: 4,
                        child: FittedBox(
                            child: Text(
                          '$value',
                          style: TextStyle(
                            height: 1.1,
                            color: isActive ? Colors.black : Colors.grey,
                          ),
                        ))),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}
