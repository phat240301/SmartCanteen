import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class BottomAppBarDemo extends StatefulWidget {
  const BottomAppBarDemo({super.key});

  @override
  State createState() => _BottomAppBarDemoState();
}

class _BottomAppBarDemoState extends State<BottomAppBarDemo>
    with RestorationMixin {
  final RestorableBool _showFab = RestorableBool(true);
  final RestorableBool _showNotch = RestorableBool(true);
  final RestorableInt _currentFabLocation = RestorableInt(0);

  @override
  String get restorationId => 'bottom_app_bar_demo';

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(_showFab, 'show_fab');
    registerForRestoration(_showNotch, 'show_notch');
    registerForRestoration(_currentFabLocation, 'fab_location');
  }

  @override
  void dispose() {
    // Disposing state variables
    _showFab.dispose();
    _showNotch.dispose();
    _currentFabLocation.dispose();
    super.dispose();
  }

  // Since FloatingActionButtonLocation is not an enum, the index of the
  // selected FloatingActionButtonLocation is used for state restoration.
  static const List<FloatingActionButtonLocation> _fabLocations = [
    FloatingActionButtonLocation.endDocked,
    FloatingActionButtonLocation.centerDocked,
    FloatingActionButtonLocation.endFloat,
    FloatingActionButtonLocation.centerFloat,
  ];

  void _onShowNotchChanged(bool value) {
    setState(() {
      _showNotch.value = value;
    });
  }

  void _onShowFabChanged(bool value) {
    setState(() {
      _showFab.value = value;
    });
  }

  void _onFabLocationChanged(int? value) {
    setState(() {
      _currentFabLocation.value = value!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Bottom app bar'),
      ),
      body: ListView(
        padding: const EdgeInsets.only(bottom: 88),
        children: [
          SwitchListTile(
            title: const Text(
              'Floating action button',
            ),
            value: _showFab.value,
            onChanged: _onShowFabChanged,
          ),
          SwitchListTile(
            title: const Text('Notch'),
            value: _showNotch.value,
            onChanged: _onShowNotchChanged,
          ),
          const Padding(
            padding: EdgeInsets.all(16),
            child: Text('Floating action button position'),
          ),
          RadioListTile<int>(
            title: const Text(
              'Docked - End',
            ),
            value: 0,
            groupValue: _currentFabLocation.value,
            onChanged: _onFabLocationChanged,
          ),
          RadioListTile<int>(
            title: const Text(
              'Docked - Center',
            ),
            value: 1,
            groupValue: _currentFabLocation.value,
            onChanged: _onFabLocationChanged,
          ),
          RadioListTile<int>(
            title: const Text(
              'Floating - End',
            ),
            value: 2,
            groupValue: _currentFabLocation.value,
            onChanged: _onFabLocationChanged,
          ),
          RadioListTile<int>(
            title: const Text(
              'Floating - Center',
            ),
            value: 3,
            groupValue: _currentFabLocation.value,
            onChanged: _onFabLocationChanged,
          ),
        ],
      ),
      floatingActionButton: _showFab.value
          ? Semantics(
        container: true,
        sortKey: const OrdinalSortKey(0),
        child: FloatingActionButton(
          onPressed: () {},
          tooltip: 'Create',
          backgroundColor: Theme.of(context).colorScheme.primary,
          child: Icon(Icons.add, color: Theme.of(context).colorScheme.onPrimary),
        ),
      )
          : null,
      floatingActionButtonLocation: _fabLocations[_currentFabLocation.value],
      bottomNavigationBar: _DemoBottomAppBar(
        fabLocation: _fabLocations[_currentFabLocation.value],
        shape: _showNotch.value ? const CircularNotchedRectangle() : null,
      ),
    );
  }
}

class _DemoBottomAppBar extends StatelessWidget {
  const _DemoBottomAppBar({
    required this.fabLocation,
    this.shape,
  });

  final FloatingActionButtonLocation fabLocation;
  final NotchedShape? shape;

  static final centerLocations = <FloatingActionButtonLocation>[
    FloatingActionButtonLocation.centerDocked,
    FloatingActionButtonLocation.centerFloat,
  ];

  @override
  Widget build(BuildContext context) {
    return Semantics(
      sortKey: const OrdinalSortKey(1),
      container: true,
      label: 'Open navigation menu',
      child: BottomAppBar(
        shape: shape,
        //padding: EdgeInsets.all(8),
        child: IconTheme(
          data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
          child: Row(
            children: [
              IconButton(
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                icon: Icon(Icons.menu, color: Theme.of(context).colorScheme.primary),
                onPressed: () {},
              ),
              if (centerLocations.contains(fabLocation)) const Spacer(),
              IconButton(
                tooltip: 'Search',
                icon: Icon(Icons.search, color: Theme.of(context).colorScheme.primary),
                onPressed: () {},
              ),
              IconButton(
                tooltip: 'Favorite',
                icon: Icon(Icons.favorite, color: Theme.of(context).colorScheme.primary),

                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}