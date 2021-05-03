import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pdm2021/models/slide_model.dart';
import 'package:pdm2021/widgets/slide_dots.dart';
import 'package:pdm2021/widgets/slide_item.dart';

class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _pageController.dispose();
  }

  _onPageChange(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white10,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Expanded(
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    PageView.builder(
                      controller: _pageController,
                      scrollDirection: Axis.horizontal,
                      itemCount: slideModeList.length,
                      onPageChanged: _onPageChange,
                      itemBuilder: (context, index) => SlideItem(index),
                    ),
                    Stack(
                      alignment: AlignmentDirectional.topStart,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: 35),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              for (int i = 0; i < slideModeList.length; i++)
                                if (i == _currentPage)
                                  SlideDots(true)
                                else
                                  SlideDots(false)
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              Column(
                //Coluna dos botãos
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextButton(
                    onPressed: null,
                    child: Text("Começando",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        )),
                    style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24)),
                        backgroundColor: Colors.greenAccent,
                        padding: const EdgeInsets.all(15)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Possui uma contar?",
                          style: TextStyle(fontSize: 18)),
                      TextButton(
                        onPressed: null,
                        child: Text("Login", style: TextStyle(fontSize: 18)),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
