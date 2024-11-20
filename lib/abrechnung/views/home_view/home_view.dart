import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zeit_erfassung/_general/widgets/wrapper.dart';
import 'package:zeit_erfassung/abrechnung/views/stempel_graph_view/stempel_graph_view.dart';
import 'package:zeit_erfassung/abrechnung/views/stempel_list_view/stempel_list_view.dart';
import 'package:zeit_erfassung/abrechnung/views/timer_view/timer_view.dart';
import 'package:zeit_erfassung/authentication/blocs/auth_bloc.dart';
import 'package:zeit_erfassung/authentication/states/auth_state.dart';
// import 'package:zeit_erfassung/helpers/logger.dart';

/// Page to show after login
class HomeView extends StatefulWidget {
  /// Named route to this page
  static const String routeName = '/home';

  /// Constructs the page to show after login
  HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();

  final _pages = [
    () => const TimerView(),
    () => const StempelGraphView(),
    () => const StempelListView(),
  ];
}

class _HomeViewState extends State<HomeView> {
  // static final _logger = const Logger('HomeView', true);
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) => BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) => Wrapper(
          title: _selectedIndex == 0 ? 'Überblick' : 'Protokoll',
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.black,
            currentIndex: _selectedIndex,
            onTap: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            items: [
              const BottomNavigationBarItem(
                icon: Icon(Icons.timelapse),
                label: 'Aktuell',
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.poll_outlined),
                label: 'Protokoll',
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.format_list_bulleted),
                label: 'Liste',
              ),
            ],
          ),
          body: widget._pages[_selectedIndex](),
        ),
      );
}
