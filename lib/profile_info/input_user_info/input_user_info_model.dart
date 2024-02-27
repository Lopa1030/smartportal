import '/flutter_flow/flutter_flow_util.dart';
import 'input_user_info_widget.dart' show InputUserInfoWidget;
import 'package:flutter/material.dart';

class InputUserInfoModel extends FlutterFlowModel<InputUserInfoWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for username widget.
  FocusNode? usernameFocusNode;
  TextEditingController? usernameController;
  String? Function(BuildContext, String?)? usernameControllerValidator;
  // State field(s) for dob widget.
  FocusNode? dobFocusNode;
  TextEditingController? dobController;
  String? Function(BuildContext, String?)? dobControllerValidator;
  // State field(s) for add widget.
  FocusNode? addFocusNode;
  TextEditingController? addController;
  String? Function(BuildContext, String?)? addControllerValidator;
  // State field(s) for phnnum widget.
  FocusNode? phnnumFocusNode;
  TextEditingController? phnnumController;
  String? Function(BuildContext, String?)? phnnumControllerValidator;
  // State field(s) for bg widget.
  FocusNode? bgFocusNode;
  TextEditingController? bgController;
  String? Function(BuildContext, String?)? bgControllerValidator;
  // State field(s) for religion widget.
  FocusNode? religionFocusNode;
  TextEditingController? religionController;
  String? Function(BuildContext, String?)? religionControllerValidator;
  // State field(s) for nid widget.
  FocusNode? nidFocusNode;
  TextEditingController? nidController;
  String? Function(BuildContext, String?)? nidControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    usernameFocusNode?.dispose();
    usernameController?.dispose();

    dobFocusNode?.dispose();
    dobController?.dispose();

    addFocusNode?.dispose();
    addController?.dispose();

    phnnumFocusNode?.dispose();
    phnnumController?.dispose();

    bgFocusNode?.dispose();
    bgController?.dispose();

    religionFocusNode?.dispose();
    religionController?.dispose();

    nidFocusNode?.dispose();
    nidController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
