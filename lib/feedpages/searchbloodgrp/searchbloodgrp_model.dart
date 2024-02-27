import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'searchbloodgrp_widget.dart' show SearchbloodgrpWidget;
import 'package:flutter/material.dart';

class SearchbloodgrpModel extends FlutterFlowModel<SearchbloodgrpWidget> {
  ///  Local state fields for this page.

  bool searching = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for SearcField widget.
  final searcFieldKey = GlobalKey();
  FocusNode? searcFieldFocusNode;
  TextEditingController? searcFieldController;
  String? searcFieldSelectedOption;
  String? Function(BuildContext, String?)? searcFieldControllerValidator;
  List<UsersRecord> simpleSearchResults = [];

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    searcFieldFocusNode?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
