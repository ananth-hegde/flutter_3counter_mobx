import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'counter.dart';
import 'destinationStore.dart';

var dStore = DestinationStore();
var cStore = Counter();
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  static List<Widget> _widgetOptions = <Widget>[
    CounterPage(),
    CounterPage(),
    CounterPage(),
  ];

  void _onItemTapped(int index) {
    dStore.changeIndex(index);
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text('MobX 3 Counter App'),
        ),
        body: Center(
          child: _widgetOptions.elementAt(dStore.index),
        ),
        floatingActionButton: Visibility(
          visible: cStore.isFloatingButtonVisible,
          child: FloatingActionButton(
            onPressed: () => cStore.incrementCounter(dStore.index),
            child: Icon(Icons.add),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.first_page),
              label: 'Counter 1',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.accessible),
              label: 'Counter 2',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'Counter 3',
            ),
          ],
          currentIndex: dStore.index,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}

class CounterPage extends StatefulWidget {
  
  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            'You have incremented the counter on this page this many times: ',
          ),
          Observer(
            builder: (_) => Text(
              '${cStore.counterArray[dStore.index]}',
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                  child: Text('Increment Counter '),
                  onPressed: () => cStore.incrementCounter(dStore.index)),
              ElevatedButton(
                child: Text('Show/Hide Floating Button'),
                onPressed: cStore.changeVisibility,
              )
            ],
          )
        ],
      ),
    );
  }
}