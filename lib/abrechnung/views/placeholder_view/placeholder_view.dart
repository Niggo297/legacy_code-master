import 'package:flutter/material.dart';
import 'package:zeit_erfassung/_general/widgets/wrapper.dart';
// import 'package:zeit_erfassung/helpers/logger.dart';

/// Empty page that can be copied to start a new page
class PlaceholderView extends StatelessWidget {
  /// Named route to this page
  static const routeName = '/placeholder';
  // static final _logger = const Logger('PlaceholderView', true);
  /// Empty page that can be copied to start a new page
  const PlaceholderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const Wrapper(
        title: 'Platzhalter',
        body: Center(child: Text('Platzhalter')),
      );
}
