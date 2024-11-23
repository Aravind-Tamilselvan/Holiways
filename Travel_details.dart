import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'travel_details_model.dart';
export 'travel_details_model.dart';

class TravelDetailsWidget extends StatefulWidget {
  const TravelDetailsWidget({super.key});

  @override
  State<TravelDetailsWidget> createState() => _TravelDetailsWidgetState();
}

class _TravelDetailsWidgetState extends State<TravelDetailsWidget> {
  late TravelDetailsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TravelDetailsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Container(
          width: 431,
          height: 872,
          decoration: BoxDecoration(
            color: Color(0xFFEBFFFF),
          ),
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(-0.98, -0.95),
                child: FlutterFlowIconButton(
                  borderRadius: 50,
                  buttonSize: 36,
                  fillColor: Color(0xFF00CED1),
                  icon: Icon(
                    Icons.arrow_back,
                    color: FlutterFlowTheme.of(context).info,
                    size: 20,
                  ),
                  onPressed: () async {
                    context.safePop();
                  },
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.83, -0.84),
                child: Text(
                  'Bus Details ',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        color: Color(0xFF00CED1),
                        fontSize: 24,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.03, 0.89),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    'assets/images/GoTo.png',
                    width: 102,
                    height: 72,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.76, -0.62),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Date :',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            fontSize: 18,
                            letterSpacing: 0.0,
                          ),
                    ),
                    Text(
                      'Time :',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            fontSize: 18,
                            letterSpacing: 0.0,
                          ),
                    ),
                    Text(
                      'Pickup Location :',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            fontSize: 18,
                            letterSpacing: 0.0,
                          ),
                    ),
                    Text(
                      'Price :',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            fontSize: 18,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ].divide(SizedBox(height: 20)),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.13, -0.84),
                child: Icon(
                  Icons.bus_alert,
                  color: Color(0xFF00CED1),
                  size: 28,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.05, -0.18),
                child: FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed('Booking_form');
                  },
                  text: 'Book Now',
                  options: FFButtonOptions(
                    height: 40,
                    padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                    iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                    color: Color(0x3000CED1),
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Readex Pro',
                          color: Color(0xFF00CED1),
                          letterSpacing: 0.0,
                        ),
                    elevation: 0,
                    borderSide: BorderSide(
                      color: Color(0xFF00CED1),
                    ),
                    borderRadius: BorderRadius.circular(8),
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
