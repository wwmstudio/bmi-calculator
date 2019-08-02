import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'blocs/input_bloc.dart';
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
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircularProgressIndicator(),
                      SizedBox(
                        height: kCommonMargin * 4,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Loding...',
                            style: kLabelStyle,
                          ),
                        ],
                      ),
                    ],
                  )
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: kCommonMargin * 2),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            inputBloc.result['status'],
                            style: kSuccessTextStyle.copyWith(
                              color: inputBloc.result['indicator'] == 'warning'
                                  ? kWarningColor
                                  : inputBloc.result['indicator'] == 'danger'
                                      ? kDangerColor
                                      : kSuccessColor,
                            ),
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
                            '${inputBloc.result['normal']['min']} - ${inputBloc.result['normal']['max']} kg/m\u00B2',
                            style: kActiveLabelStyle.copyWith(
                              fontWeight: FontWeight.w600,
                              fontSize: 24.0,
                            ),
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
                                horizontal: kCommonMargin,
                              ),
                              child: Text(
                                inputBloc.result['message'],
                                style: kLabelStyle.copyWith(
                                  fontSize: 28.0,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
          ),
          BottomButton(
            onClick: () {
              Navigator.pushReplacementNamed(context, '/');
              inputBloc.resetAll();
            },
            text: 'RE-CALCULATE',
          )
        ],
      ),
    );
  }
}
