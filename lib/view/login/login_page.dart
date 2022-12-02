import 'package:flutter/material.dart';

import '../../utils/size.dart';

Positioned loginPage(BuildContext context) {
  return Positioned(
      bottom: getHeight(17, context),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                  width: getWidth(99, context),
                  height: getHeight(56, context),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                      bottomLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12),
                    ),
                    color: const Color.fromRGBO(250, 250, 249, 1),
                    border: Border.all(
                      color: const Color.fromRGBO(38, 144, 212, 1),
                      width: 1,
                    ),
                  )),
              SizedBox(
                width: getWidth(16, context),
              ),
              Container(
                width: getWidth(212, context),
                height: getHeight(56, context),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ),
                  color: const Color.fromRGBO(250, 250, 249, 1),
                  border: Border.all(
                    color: const Color.fromRGBO(38, 144, 212, 1),
                    width: 1,
                  ),
                ),
                child: const Center(
                  child: Text(
                    'Telefon nömrəsi',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromRGBO(66, 70, 75, 1),
                        fontFamily: 'Montserrat',
                        fontSize: 15,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1.6),
                  ),
                ),
              )
            ],
          ),
          Container(
              width: getWidth(327, context),
              height: getHeight(52, context),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
                color: const Color(0xff00A8DD),
                border: Border.all(
                  color: const Color.fromRGBO(38, 144, 212, 1),
                  width: 1,
                ),
              ),
              child: const Center(
                child: Text(
                  'Login',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontFamily: 'Montserrat',
                      fontSize: 16,
                      letterSpacing:
                          0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1.5),
                ),
              )),
          Container(
              width: 327,
              height: 52,
              child: Stack(children: <Widget>[
                Positioned(
                    top: 0,
                    left: 0,
                    child: Container(
                        width: 327,
                        height: 52,
                        child: Stack(children: <Widget>[
                          Positioned(
                              top: 0,
                              left: 0,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(12),
                                    topRight: Radius.circular(12),
                                    bottomLeft: Radius.circular(12),
                                    bottomRight: Radius.circular(12),
                                  ),
                                  border: Border.all(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    width: 1,
                                  ),
                                ),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 32, vertical: 14),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Text(
                                      'Geydiyyatdan keçmək',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(255, 255, 255, 1),
                                          fontFamily: 'Montserrat',
                                          fontSize: 16,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1.5),
                                    ),
                                  ],
                                ),
                              )),
                        ]))),
              ]))
        ],
      ));
}
