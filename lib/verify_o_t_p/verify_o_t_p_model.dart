import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'verify_o_t_p_widget.dart' show VerifyOTPWidget;
import 'package:flutter/material.dart';

class VerifyOTPModel extends FlutterFlowModel<VerifyOTPWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (verify otp phone change)] action in Button widget.
  ApiCallResponse? apiResulttsb;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
