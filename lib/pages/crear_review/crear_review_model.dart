import '/flutter_flow/flutter_flow_util.dart';
import 'crear_review_widget.dart' show CrearReviewWidget;
import 'package:flutter/material.dart';

class CrearReviewModel extends FlutterFlowModel<CrearReviewWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txtNombre widget.
  FocusNode? txtNombreFocusNode;
  TextEditingController? txtNombreController;
  String? Function(BuildContext, String?)? txtNombreControllerValidator;
  // State field(s) for txtURL widget.
  FocusNode? txtURLFocusNode;
  TextEditingController? txtURLController;
  String? Function(BuildContext, String?)? txtURLControllerValidator;
  // State field(s) for txtDescripcion widget.
  FocusNode? txtDescripcionFocusNode;
  TextEditingController? txtDescripcionController;
  String? Function(BuildContext, String?)? txtDescripcionControllerValidator;
  // State field(s) for estrellas widget.
  int? estrellasValue;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    txtNombreFocusNode?.dispose();
    txtNombreController?.dispose();

    txtURLFocusNode?.dispose();
    txtURLController?.dispose();

    txtDescripcionFocusNode?.dispose();
    txtDescripcionController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
