import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Error'),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Text(
            "Opps something went wrong!",
            style: TextStyle(
              color: Theme.of(context).errorColor,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
