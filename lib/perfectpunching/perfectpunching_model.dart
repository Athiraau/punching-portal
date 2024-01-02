import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/tesssttt/tesssttt_widget.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'perfectpunching_widget.dart' show PerfectpunchingWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PerfectpunchingModel extends FlutterFlowModel<PerfectpunchingWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for EmployeeCode widget.
  FocusNode? employeeCodeFocusNode;
  TextEditingController? employeeCodeController;
  String? Function(BuildContext, String?)? employeeCodeControllerValidator;
  // State field(s) for Password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordControllerValidator;
  // State field(s) for EmployeeName widget.
  FocusNode? employeeNameFocusNode;
  TextEditingController? employeeNameController;
  String? Function(BuildContext, String?)? employeeNameControllerValidator;
  // State field(s) for ShiftName widget.
  FocusNode? shiftNameFocusNode;
  TextEditingController? shiftNameController;
  String? Function(BuildContext, String?)? shiftNameControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passwordVisibility = false;
  }

  void dispose() {
    unfocusNode.dispose();
    employeeCodeFocusNode?.dispose();
    employeeCodeController?.dispose();

    passwordFocusNode?.dispose();
    passwordController?.dispose();

    employeeNameFocusNode?.dispose();
    employeeNameController?.dispose();

    shiftNameFocusNode?.dispose();
    shiftNameController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
