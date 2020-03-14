import 'dart:io';

import 'package:flutter/material.dart';
import 'package:quick_actions/quick_actions.dart';

import 'main.dart';

class QuickActionsManager extends StatefulWidget {
  final Widget child;
  QuickActionsManager({Key key, this.child}) : super(key: key);
  _QuickActionsManagerState createState() => _QuickActionsManagerState();
}

class _QuickActionsManagerState extends State<QuickActionsManager> {
  final QuickActions quickActions = QuickActions();

  @override
  void initState() {
    super.initState();
    _setupQuickActions();
    _handleQuickActions();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }

  void _setupQuickActions() {
    quickActions.setShortcutItems(<ShortcutItem>[
      ShortcutItem(type: 'action_main', localizedTitle: 'Main view', icon: Platform.isAndroid ? 'quick_box' : 'QuickBox'),
      ShortcutItem(type: 'action_help', localizedTitle: 'Help', icon: Platform.isAndroid ? 'quick_heart' : 'QuickHeart')
    ]);
  }

  void _handleQuickActions() {
    quickActions.initialize((shortcutType) {
      if (shortcutType == 'action_main') {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
      } else if (shortcutType == 'action_help') {
        print('Show the help dialog!');
      }
    });
  }
}
