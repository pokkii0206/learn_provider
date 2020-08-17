import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'main_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: ChangeNotifierProvider<MainModel>(
        create: (_) => MainModel(),
        child: Scaffold(
          appBar: AppBar(
            title: Text('LEARN PROVIDER'),
          ),
          body: Consumer<MainModel>(builder: (context, model, child) {
              return Center(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Text(model.display_text,
                      style: TextStyle(fontSize: 40
                      ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      RaisedButton(
                        child: Text('Button'),
                        color: Colors.lightBlue,
                        onPressed: () {
                          model.changeDisplayText();
                        },
                      ),
                    ],
                  ),
                ),  
              );
            }
          ),


        ),
      ),
    );
  }
}

