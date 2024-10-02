import '/flutter_flow/flutter_flow_util.dart';
import 'segunda_pagina_widget.dart' show SegundaPaginaWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class SegundaPaginaModel extends FlutterFlowModel<SegundaPaginaWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    expandableExpandableController.dispose();
  }
}
