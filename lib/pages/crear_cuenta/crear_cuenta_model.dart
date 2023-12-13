import '/flutter_flow/flutter_flow_util.dart';
import 'crear_cuenta_widget.dart' show CrearCuentaWidget;
import 'package:flutter/material.dart';

class CrearCuentaModel extends FlutterFlowModel<CrearCuentaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txtEmail widget.
  FocusNode? txtEmailFocusNode;
  TextEditingController? txtEmailController;
  String? Function(BuildContext, String?)? txtEmailControllerValidator;
  // State field(s) for txPassword widget.
  FocusNode? txPasswordFocusNode;
  TextEditingController? txPasswordController;
  late bool txPasswordVisibility;
  String? Function(BuildContext, String?)? txPasswordControllerValidator;
  // State field(s) for txPasswordConfirm widget.
  FocusNode? txPasswordConfirmFocusNode;
  TextEditingController? txPasswordConfirmController;
  late bool txPasswordConfirmVisibility;
  String? Function(BuildContext, String?)? txPasswordConfirmControllerValidator;
  // State field(s) for txtNombre widget.
  FocusNode? txtNombreFocusNode;
  TextEditingController? txtNombreController;
  String? Function(BuildContext, String?)? txtNombreControllerValidator;
  // State field(s) for txtUrlPerfi widget.
  FocusNode? txtUrlPerfiFocusNode;
  TextEditingController? txtUrlPerfiController;
  String? Function(BuildContext, String?)? txtUrlPerfiControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    txPasswordVisibility = false;
    txPasswordConfirmVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    txtEmailFocusNode?.dispose();
    txtEmailController?.dispose();

    txPasswordFocusNode?.dispose();
    txPasswordController?.dispose();

    txPasswordConfirmFocusNode?.dispose();
    txPasswordConfirmController?.dispose();

    txtNombreFocusNode?.dispose();
    txtNombreController?.dispose();

    txtUrlPerfiFocusNode?.dispose();
    txtUrlPerfiController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
