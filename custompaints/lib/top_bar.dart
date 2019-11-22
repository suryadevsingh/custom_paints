import 'package:custompaints/curvepainter.dart';
import 'package:custompaints/custom_theme.dart';
import 'package:custompaints/themes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopBar extends StatefulWidget {
  @override
  _TopBarState createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {

  void _changeTheme(BuildContext buildContext, MyThemeKeys key) {
    CustomTheme.instanceOf(buildContext).changeTheme(key);
  }
    @override
    Widget build(BuildContext context) {
      return Column(
        children: <Widget>[
      Stack(
      children: <Widget>[


      CustomPaint(
      child: Container(
      height: 370.0,
      ),
      painter: CurvePainter(),
      ),
      Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
          Center(
            child: RaisedButton(
            onPressed: () {
            _changeTheme(context, MyThemeKeys.LIGHT);
            },
      child: Text("Light!"),
      ),
          ),
          Center(
            child: RaisedButton(
            onPressed: () {
            _changeTheme(context, MyThemeKeys.DARK);
            },
      child: Text("Dark!"),
      ),
          ),
        Center(
          child: RaisedButton(
          onPressed: () {
          _changeTheme(context, MyThemeKeys.DARKER);
      },
      child: Text("Darker!"),
      ),
        ),


      ],
      ),

      ],
      ),
          Center(
            child: AnimatedContainer(
              duration: Duration(milliseconds: 500),
              color: Theme.of(context).primaryColor,
              width: 250,
              height: 300,
            ),
          ),
          Card(
            elevation: 9,
            color: Theme.of(context).primaryColor,
            child: Text("text 1",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
          ),
        ],
      );
    }
  }




