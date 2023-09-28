import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types, must_be_immutable
class product extends StatelessWidget {
  TextEditingController dateInput = TextEditingController();

  product({super.key});
  @override
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
            body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(12, 8, 12, 8),
              child: Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromARGB(255, 146, 146, 146),
                        blurRadius: 5.0,
                      )
                    ]),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(4, 0, 4, 0),
                        child: Icon(
                          Icons.search_rounded,
                          color: Color.fromARGB(255, 74, 74, 74),
                          size: 24,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                          child: TextFormField(
                            obscureText: false,
                            decoration: const InputDecoration(
                              hintText: 'Search...',
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color.fromARGB(0, 206, 206, 206),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color.fromARGB(0, 183, 183, 183),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              errorBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              focusedErrorBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                            ),
                            style: GoogleFonts.getFont('Prompt',
                                color: const Color.fromARGB(179, 0, 0, 0),
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  for (var i = 0; i < 15; i++)
                    ProductBox_Wedget()
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}

class ProductBox_Wedget extends StatelessWidget {
  const ProductBox_Wedget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsetsDirectional.fromSTEB(16, 0, 16, 16),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              blurRadius: 5,
              color: Color(0x44111417),
              offset: Offset(0, 2),
            )
          ],
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(
              12, 12, 12, 12),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: const Color(0x4C4B39EF),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: const Color(0xFF4B39EF),
                    width: 2,
                  ),
                ),
                alignment:
                    const AlignmentDirectional(0.00, 0.00),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(
                      2, 2, 2, 2),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(6),
                    child: Image.network(
                      'https://file.drugnetcenter.com/drugpos/GoodPictures/420.jpg',
                      width: double.infinity,
                      height: double.infinity,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(
                      12, 0, 0, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment:
                        CrossAxisAlignment.start,
                    children: [
                      Text(
                        'GPO BETAMETHASONE',
                        style: GoogleFonts.getFont('Prompt',
                            color: const Color.fromARGB(243, 0, 0, 0),
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            0, 8, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            const Icon(
                              Icons.qr_code,
                              color: Color(0xFF57636C),
                              size: 16,
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional
                                  .fromSTEB(4, 0, 0, 0),
                              child: Text(
                                '555555',
                                style: GoogleFonts.getFont(
                                    'Prompt',
                                    color: const Color.fromARGB(
                                        243, 82, 82, 82),
                                    fontSize: 16,
                                    fontWeight:
                                        FontWeight.w600),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            0, 4, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            const Icon(
                              Icons.circle,
                              color: Color(0xFF57636C),
                              size: 16,
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional
                                  .fromSTEB(4, 0, 0, 0),
                              child: Text(
                                '3,000 บาท',
                                style: GoogleFonts.getFont(
                                    'Prompt',
                                    color: const Color.fromARGB(
                                        243, 66, 66, 66),
                                    fontSize: 22,
                                    fontWeight:
                                        FontWeight.w600),
                              ),
                            ),
                          ],
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
