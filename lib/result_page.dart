import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'blocs/input_bloc.dart';
import 'bmi_calculator.dart';
import 'bottom_button.dart';
import 'constants.dart';
import 'rounded_card.dart';
import 'theme.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final InputBloc inputBloc = Provider.of<InputBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(kAppName),
      ),
      body: Column(
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                    left: kCommonMargin * 3,
                    top: kCommonMargin * 3,
                    right: kCommonMargin * 3),
                child: Text(
                  'YOUR RESULT',
                  style: kH1ActiveTextStyle,
                ),
              ),
            ],
          ),
          RoundedCard(
            margin: kCommonMargin * 3,
            child: inputBloc.result == null
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: kCommonMargin * 3),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        SizedBox(height: kCommonMargin * 2),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              inputBloc.result['status'],
                              style: kSuccessTextStyle,
                            ),
                          ],
                        ),
                        SizedBox(height: kCommonMargin * 2),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              inputBloc.result['bmi'].toString(),
                              style: kDisplay1ActiveTextStyle,
                            ),
                          ],
                        ),
                        SizedBox(height: kCommonMargin * 4),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Normal BMI Range',
                              style: kLabelStyle,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              '18.5 - 25 kg/m\u00B2',
                              style: kActiveLabelStyle.copyWith(
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        SizedBox(height: kCommonMargin * 4),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: kCommonMargin * 8),
                                child: Text(
                                  inputBloc.result['message'],
                                  style: kActiveLabelStyle,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: kCommonMargin * 6),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            FlatButton(
                              child: Text(
                                'SAVE RESULT',
                                style: kActiveLabelStyle,
                              ),
                              onPressed: () {},
                              splashColor: kTernaryColor,
                            ),
                          ],
                        ),
                        SizedBox(height: kCommonMargin * 6),
                      ],
                    ),
                  ),
          ),
          BottomButton(
            onClick: () => Navigator.pushReplacementNamed(context, '/'),
            text: 'RE-CALCULATE',
          )
        ],
      ),
    );
  }
}
