import 'package:flutter/material.dart';

import 'onboard_model.dart';

class TabIndicator extends StatefulWidget {
  TabIndicator({Key? key, required this.selectedindex}) : super(key: key);
  int selectedindex;
  @override
  State<TabIndicator> createState() => _TabIndicatorState();
}

class _TabIndicatorState extends State<TabIndicator>
    with SingleTickerProviderStateMixin {
  late final TabController _controller;

  @override
  void didUpdateWidget(covariant TabIndicator oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    if (oldWidget.selectedindex != widget.selectedindex) {
      _controller.animateTo(widget.selectedindex);
    }
  }

  @override
  void initState() {
    super.initState();
    _controller =
        TabController(length: OnBoardModels.onBoardItems.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return TabPageSelector(
      controller: _controller,
    );
  }
}
