// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:state_managment/feature/onBoard/onboard_model.dart';
import 'package:state_managment/feature/onBoard/tab_indicator.dart';
import 'package:state_managment/feature/widget/onbpard_card.dart';
import 'package:state_managment/product/padding/page_padding.dart';

class OnBoard extends StatefulWidget {
  const OnBoard({Key? key}) : super(key: key);

  @override
  State<OnBoard> createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  final String _actionSkip = "skip";
  int selectedIndex = 0;

  void _incrementAndChange() {
    if (_isLastPage) {
      return;
    } else {
      _incrementSelectedPage();
    }
  }

  bool get _isLastPage =>
      OnBoardModels.onBoardItems.length - 1 == selectedIndex;

  void _incrementSelectedPage() {
    setState(() {
      selectedIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [TextButton(onPressed: () {}, child: Text(_actionSkip))],
          leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.chevron_left_outlined,
                color: Colors.grey,
              ))),
      body: Padding(
        padding: const PagePadding.all(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _pageView(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TabIndicator(selectedindex: selectedIndex),
                _actionButton()
              ],
            )
          ],
        ),
      ),
    ));
  }

  FloatingActionButton _actionButton() {
    return FloatingActionButton(
      onPressed: () {
        _incrementAndChange();
      },
      child: _isLastPage ? const Text("Next") : const Text("Skip"),
    );
  }

  Expanded _pageView() {
    return Expanded(
      child: PageView.builder(
        itemCount: OnBoardModels.onBoardItems.length,
        itemBuilder: (context, index) {
          return OnBoardCard(model: OnBoardModels.onBoardItems[index]);
        },
      ),
    );
  }
}
