import 'package:flutter/material.dart';

class Customalert {
  // Singleton pattern (optional)
  static final Customalert _instance = Customalert._internal();
  factory Customalert() => _instance;
  Customalert._internal();

  // Show a simple alert/snackbar
  void show(BuildContext context,
      {required String message,
        required Duration closeduration,
        required Color backgroundColor,
        required TextStyle textStyle,
        required bool isIcon,
        Icon icn=const Icon(Icons.check_circle, color: Colors.green, size: 30)

      }) {
    showDialog(
      context: context,
      barrierDismissible: false, // prevent manual dismiss
      builder: (BuildContext ctx) {
        // Auto-close after duration
        Future.delayed(closeduration, () {
          if (Navigator.of(ctx).canPop()) {
            Navigator.of(ctx).pop();
          }
        });

        return Dialog(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
            child: Container(
              height: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    message,
                    textAlign: TextAlign.center,
                    style: textStyle,
                  ),
                  isIcon?icn:Container()
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
