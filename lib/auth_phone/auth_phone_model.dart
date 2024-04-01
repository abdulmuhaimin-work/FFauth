import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'auth_phone_widget.dart' show AuthPhoneWidget;
import 'package:flutter/material.dart';

class AuthPhoneModel extends FlutterFlowModel<AuthPhoneWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for phone widget.
  FocusNode? phoneFocusNode;
  TextEditingController? phoneController;
  String? Function(BuildContext, String?)? phoneControllerValidator;
  // Stores action output result for [Backend Call - API (otp login)] action in Button widget.
  ApiCallResponse? apiResult8jo;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    phoneFocusNode?.dispose();
    phoneController?.dispose();
  }
}
