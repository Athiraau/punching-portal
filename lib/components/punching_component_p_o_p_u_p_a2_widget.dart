import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'punching_component_p_o_p_u_p_a2_model.dart';
export 'punching_component_p_o_p_u_p_a2_model.dart';

class PunchingComponentPOPUPA2Widget extends StatefulWidget {
  const PunchingComponentPOPUPA2Widget({Key? key}) : super(key: key);

  @override
  _PunchingComponentPOPUPA2WidgetState createState() =>
      _PunchingComponentPOPUPA2WidgetState();
}

class _PunchingComponentPOPUPA2WidgetState
    extends State<PunchingComponentPOPUPA2Widget> {
  late PunchingComponentPOPUPA2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PunchingComponentPOPUPA2Model());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: Color(0x00E9EBE2),
      ),
      child: Material(
        color: Colors.transparent,
        elevation: 4.0,
        child: Container(
          width: 1920.0,
          height: 700.0,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurRadius: 10.0,
                color: Color(0xFFFFDE00),
                offset: Offset(0.0, 2.0),
                spreadRadius: 20.0,
              )
            ],
            gradient: LinearGradient(
              colors: [Color(0xFFFFDE00), Color(0xFFF8F9FA)],
              stops: [0.0, 1.0],
              begin: AlignmentDirectional(1.0, 0.87),
              end: AlignmentDirectional(-1.0, -0.87),
            ),
            border: Border.all(
              color: Color(0xFFED2023),
              width: 4.0,
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Container(
                  width: 100.0,
                  height: 700.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0.00, -1.00),
                        child: Container(
                          width: 500.0,
                          height: 200.0,
                          decoration: BoxDecoration(
                            color: Color(0xFFFFDE00),
                            image: DecorationImage(
                              fit: BoxFit.contain,
                              image: Image.asset(
                                'assets/images/manappuram_finance_logo-1-1577790428.jpg',
                              ).image,
                            ),
                          ),
                          alignment: AlignmentDirectional(-0.05, 0.00),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.75, -1.00),
                        child: Image.asset(
                          'assets/images/face_punch_.jpeg',
                          width: 600.0,
                          height: 700.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
