
import 'package:flutter/material.dart';
import 'package:flutter_kit_app/modules/routers/routers.dart';
import 'package:flutter_kit_app/utils/view_util.dart';

class ButtonPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: ViewUtil.createAppBar(Routes.buttonPage),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const RaisedButton(
              onPressed: null,
              padding: const EdgeInsets.all(10.0),
              child: Text(
                  'Disabled Button',
                  style: TextStyle(fontSize: 24)
              ),
            ),
            const SizedBox(height: 30),
            RaisedButton(
              padding: const EdgeInsets.all(10.0),
              onPressed: () {},
              child: const Text(
                  'Enabled Button',
                  style: TextStyle(fontSize: 24)
              ),
            ),
            const SizedBox(height: 30),
            RaisedButton(
              onPressed: () {},
              textColor: Colors.white,
              padding: const EdgeInsets.all(0.0),
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[
                      Color(0xFF0D47A1),
                      Color(0xFF1976D2),
                      Color(0xFF42A5F5),
                    ],
                  ),
                ),
                padding: const EdgeInsets.all(10.0),
                child: const Text(
                    'Gradient Button',
                    style: TextStyle(fontSize: 24)
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }

}