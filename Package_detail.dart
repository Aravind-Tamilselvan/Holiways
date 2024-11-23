import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'package_details_model.dart';
export 'package_details_model.dart';

class PackageDetailsWidget extends StatefulWidget {
  const PackageDetailsWidget({super.key});

  @override
  State<PackageDetailsWidget> createState() => _PackageDetailsWidgetState();
}

class _PackageDetailsWidgetState extends State<PackageDetailsWidget> {
  late PackageDetailsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PackageDetailsModel());

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
        body: Container(
          width: 407,
          height: 804,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(-0.6, -0.94),
                child: Text(
                  'Taj Mahal',
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
                alignment: AlignmentDirectional(-0.12, -0.66),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    'assets/images/image_11.png',
                    width: 347,
                    height: 361,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, 0.21),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'Description',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              color: Color(0xFF00CED1),
                              fontSize: 18,
                              letterSpacing: 0.0,
                            ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(120, 0, 4, 0),
                        child: RatingBar.builder(
                          onRatingUpdate: (newValue) => safeSetState(
                              () => _model.ratingBarValue = newValue),
                          itemBuilder: (context, index) => Icon(
                            Icons.star_rounded,
                            color: Color(0xFFF19427),
                          ),
                          direction: Axis.horizontal,
                          initialRating: _model.ratingBarValue ??= 3,
                          unratedColor: Color(0xC4F19427),
                          itemCount: 5,
                          itemSize: 24,
                          glowColor: Color(0xFFF19427),
                        ),
                      ),
                      Text(
                        '4.8',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              fontSize: 16,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, 0.41),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eligendi non quis exercitationem culpa nesciunt nihil aut nostrum explicabo reprehenderit optio amet ab temporibus asperiores quasi cupiditate. Voluptatum ducimus voluptates voluptas?',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.97, -0.95),
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
                alignment: AlignmentDirectional(0.87, 0.9),
                child: FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed('Booking_page');
                  },
                  text: 'Book Now',
                  options: FFButtonOptions(
                    height: 40,
                    padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                    iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                    color: Color(0x2F00CED1),
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
