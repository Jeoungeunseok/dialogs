import 'package:dialogs/widgets/basic_test_button.dart';
import 'package:flutter/material.dart';

int goalCount = 0;
alterDialogSetState(BuildContext context) {
  return showDialog(
      context: context,
      builder: (context) => StatefulBuilder(
              builder: (BuildContext context, StateSetter setDialog) {
            return AlertDialog(
              actionsPadding: const EdgeInsets.only(bottom: 5),
              title: const Text('SetDialog Count', textAlign: TextAlign.center),
              content:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      'assets/son.png',
                      width: 120,
                      height: 100,
                    ),
                    basicTextButton(
                        buttonText: 'Goal',
                        onPressed: () {
                          setDialog(() {
                            goalCount = goalCount + 1;
                          });
                        }),
                    Text('성공한 goal 개수: $goalCount개')
                  ],
                ),
              ]),
              actions: [
                const Divider(thickness: 1.5),
                Center(
                    child: basicTextButton(
                        buttonText: '닫기',
                        onPressed: () {
                          Navigator.pop(context);
                        })),
              ],
            );
          }));
}
