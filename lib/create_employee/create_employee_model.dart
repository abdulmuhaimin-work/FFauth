import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'create_employee_widget.dart' show CreateEmployeeWidget;
import 'package:flutter/material.dart';

class CreateEmployeeModel extends FlutterFlowModel<CreateEmployeeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  // State field(s) for task widget.
  FocusNode? taskFocusNode1;
  TextEditingController? taskController1;
  String? Function(BuildContext, String?)? taskController1Validator;
  // State field(s) for task widget.
  FocusNode? taskFocusNode2;
  TextEditingController? taskController2;
  String? Function(BuildContext, String?)? taskController2Validator;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // State field(s) for task widget.
  FocusNode? taskFocusNode3;
  TextEditingController? taskController3;
  String? Function(BuildContext, String?)? taskController3Validator;
  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    taskFocusNode1?.dispose();
    taskController1?.dispose();

    taskFocusNode2?.dispose();
    taskController2?.dispose();

    taskFocusNode3?.dispose();
    taskController3?.dispose();
  }
}
