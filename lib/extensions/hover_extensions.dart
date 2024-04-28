// import 'dart:html' as html;

import 'package:flutter/material.dart';

import 'package:the_basics/extensions/translate_on_hover.dart';

extension HoverExtensions on Widget {
  // Get a regerence to the body of the view
  // static final appContainer =
  //     html.window.document.getElementById('app-container');

  Widget get showCursorOnHover {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: this,
      // When the mouse enters the widget set the cursor to pointer
      // onHover: (event) {
      //   appContainer?.style.cursor = 'pointer';
      //   cursor:
      // },
      // // When it exits set it back to default
      // onExit: (event) {
      //   appContainer?.style.cursor = 'default';
      // },
    );
  }

  Widget get moveUpOnHover {
    return TranslateOnHover(child: this);
  }
}
