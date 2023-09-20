import 'package:dialogs/dialogs/alter_dialog.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Dialogs());
}

class Dialogs extends StatelessWidget {
  const Dialogs({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nuridal Class',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const DialogSetState(title: 'Nuridal Class: Dialog SetState'),
    );
  }
}

class DialogSetState extends StatefulWidget {
  const DialogSetState({super.key, required this.title});

  final String title;

  @override
  State<DialogSetState> createState() => _DialogSetStateState();
}

class _DialogSetStateState extends State<DialogSetState> {
  int goalCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: Text(widget.title, style: const TextStyle(fontSize: 20))),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              ElevatedButton(
                  onPressed: () => alterDialogSetState(
                      goalCount: goalCount,
                      context: context,
                      closePressed: () {
                        setState(() {
                          Navigator.pop(context);
                        });
                      }),
                  child: const Text('Show Dialog SetState'))
            ])));
  }
}
