import 'package:calculator_app/core/theme/app_colors.dart';
import 'package:calculator_app/widgets/my_custom_button.dart';
import 'package:expression_language/expression_language.dart';
import 'package:flutter/material.dart';

class Keypad extends StatefulWidget {
  final TextEditingController controller1;
  final TextEditingController controller2;
  final ScrollController scrollController;
  const Keypad({
    super.key,
    required this.controller2,
    required this.scrollController,
    required this.controller1,
  });

  @override
  State<Keypad> createState() => _KeypadState();
}

class _KeypadState extends State<Keypad> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(21.0),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Column(
                      children: [
                        MyCustomButton(
                          char: 'Ac',
                          width: 62,
                          hight: 62,
                          fontSize: 24,
                          fontWeight: FontWeight.w300,
                          forColor: AppColors.accent2,
                          backColor: AppColors.accent,
                          onPressed: () {
                            widget.controller1.clear();
                            widget.controller2.clear();
                          },
                        ),
                        SizedBox(height: 22),
                        MyCustomButton(
                          char: '7',
                          width: 62,
                          hight: 62,
                          fontSize: 32,
                          fontWeight: FontWeight.w700,
                          forColor: AppColors.accent4,
                          backColor: AppColors.secondary,
                          onPressed: () {
                            widget.controller2.text += '7';

                            WidgetsBinding.instance.addPostFrameCallback((_) {
                              widget.scrollController.animateTo(
                                widget
                                    .scrollController
                                    .position
                                    .maxScrollExtent,
                                duration: const Duration(milliseconds: 200),
                                curve: Curves.easeOut,
                              );
                            });
                          },
                        ),
                        SizedBox(height: 16),
                        MyCustomButton(
                          char: '4',
                          width: 62,
                          hight: 62,
                          fontSize: 32,
                          fontWeight: FontWeight.w700,
                          forColor: AppColors.accent4,
                          backColor: AppColors.secondary,
                          onPressed: () {
                            widget.controller2.text += '4';
                            WidgetsBinding.instance.addPostFrameCallback((_) {
                              widget.scrollController.animateTo(
                                widget
                                    .scrollController
                                    .position
                                    .maxScrollExtent,
                                duration: const Duration(milliseconds: 200),
                                curve: Curves.easeOut,
                              );
                            });
                          },
                        ),
                        SizedBox(height: 16),
                        MyCustomButton(
                          char: '1',
                          width: 62,
                          hight: 62,
                          fontSize: 32,
                          fontWeight: FontWeight.w700,
                          forColor: AppColors.accent4,
                          backColor: AppColors.secondary,
                          onPressed: () {
                            widget.controller2.text += '1';
                            WidgetsBinding.instance.addPostFrameCallback((_) {
                              widget.scrollController.animateTo(
                                widget
                                    .scrollController
                                    .position
                                    .maxScrollExtent,
                                duration: const Duration(milliseconds: 200),
                                curve: Curves.easeOut,
                              );
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Column(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            if (widget.controller2.text.isNotEmpty) {
                              widget.controller2.text = widget.controller2.text
                                  .substring(
                                    0,
                                    widget.controller2.text.length - 1,
                                  );

                              WidgetsBinding.instance.addPostFrameCallback((_) {
                                widget.scrollController.animateTo(
                                  widget
                                      .scrollController
                                      .position
                                      .maxScrollExtent,
                                  duration: const Duration(milliseconds: 200),
                                  curve: Curves.easeOut,
                                );
                              });
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            elevation: 2,
                            shadowColor: AppColors.white.withOpacity(0.4),
                            padding: EdgeInsets.zero,
                            fixedSize: Size(62, 62),
                            backgroundColor: AppColors.accent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                          child: Icon(
                            Icons.backspace_outlined,
                            color: AppColors.accent2,
                            size: 24,
                          ),
                        ),
                        SizedBox(height: 22),
                        MyCustomButton(
                          char: '8',
                          width: 62,
                          hight: 62,
                          fontSize: 32,
                          fontWeight: FontWeight.w700,
                          forColor: AppColors.accent4,
                          backColor: AppColors.secondary,
                          onPressed: () {
                            widget.controller2.text += '8';
                            WidgetsBinding.instance.addPostFrameCallback((_) {
                              widget.scrollController.animateTo(
                                widget
                                    .scrollController
                                    .position
                                    .maxScrollExtent,
                                duration: const Duration(milliseconds: 200),
                                curve: Curves.easeOut,
                              );
                            });
                          },
                        ),
                        SizedBox(height: 16),
                        MyCustomButton(
                          char: '5',
                          width: 62,
                          hight: 62,
                          fontSize: 32,
                          fontWeight: FontWeight.w700,
                          forColor: AppColors.accent4,
                          backColor: AppColors.secondary,
                          onPressed: () {
                            widget.controller2.text += '5';
                            WidgetsBinding.instance.addPostFrameCallback((_) {
                              widget.scrollController.animateTo(
                                widget
                                    .scrollController
                                    .position
                                    .maxScrollExtent,
                                duration: const Duration(milliseconds: 200),
                                curve: Curves.easeOut,
                              );
                            });
                          },
                        ),
                        SizedBox(height: 16),
                        MyCustomButton(
                          char: '2',
                          width: 62,
                          hight: 62,
                          fontSize: 32,
                          fontWeight: FontWeight.w700,
                          forColor: AppColors.accent4,
                          backColor: AppColors.secondary,
                          onPressed: () {
                            widget.controller2.text += '2';
                            WidgetsBinding.instance.addPostFrameCallback((_) {
                              widget.scrollController.animateTo(
                                widget
                                    .scrollController
                                    .position
                                    .maxScrollExtent,
                                duration: const Duration(milliseconds: 200),
                                curve: Curves.easeOut,
                              );
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Column(
                      children: [
                        MyCustomButton(
                          char: '/',
                          width: 62,
                          hight: 62,
                          fontSize: 32,
                          fontWeight: FontWeight.w700,
                          forColor: AppColors.accent3,
                          backColor: AppColors.primary,
                          onPressed: () {
                            widget.controller2.text += '/';
                            WidgetsBinding.instance.addPostFrameCallback((_) {
                              widget.scrollController.animateTo(
                                widget
                                    .scrollController
                                    .position
                                    .maxScrollExtent,
                                duration: const Duration(milliseconds: 200),
                                curve: Curves.easeOut,
                              );
                            });
                          },
                        ),
                        SizedBox(height: 22),
                        MyCustomButton(
                          char: '9',
                          width: 62,
                          hight: 62,
                          fontSize: 32,
                          fontWeight: FontWeight.w700,
                          forColor: AppColors.accent4,
                          backColor: AppColors.secondary,
                          onPressed: () {
                            widget.controller2.text += '9';
                            WidgetsBinding.instance.addPostFrameCallback((_) {
                              widget.scrollController.animateTo(
                                widget
                                    .scrollController
                                    .position
                                    .maxScrollExtent,
                                duration: const Duration(milliseconds: 200),
                                curve: Curves.easeOut,
                              );
                            });
                          },
                        ),
                        SizedBox(height: 16),
                        MyCustomButton(
                          char: '6',
                          width: 62,
                          hight: 62,
                          fontSize: 32,
                          fontWeight: FontWeight.w700,
                          forColor: AppColors.accent4,
                          backColor: AppColors.secondary,
                          onPressed: () {
                            widget.controller2.text += '6';
                            WidgetsBinding.instance.addPostFrameCallback((_) {
                              widget.scrollController.animateTo(
                                widget
                                    .scrollController
                                    .position
                                    .maxScrollExtent,
                                duration: const Duration(milliseconds: 200),
                                curve: Curves.easeOut,
                              );
                            });
                          },
                        ),
                        SizedBox(height: 16),
                        MyCustomButton(
                          char: '3',
                          width: 62,
                          hight: 62,
                          fontSize: 32,
                          fontWeight: FontWeight.w700,
                          forColor: AppColors.accent4,
                          backColor: AppColors.secondary,
                          onPressed: () {
                            widget.controller2.text += '3';
                            WidgetsBinding.instance.addPostFrameCallback((_) {
                              widget.scrollController.animateTo(
                                widget
                                    .scrollController
                                    .position
                                    .maxScrollExtent,
                                duration: const Duration(milliseconds: 200),
                                curve: Curves.easeOut,
                              );
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 22),
              Row(
                children: [
                  MyCustomButton(
                    char: '0',
                    width: 144,
                    hight: 60,
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                    forColor: AppColors.accent4,
                    backColor: AppColors.secondary,
                    onPressed: () {
                      widget.controller2.text += '0';
                      WidgetsBinding.instance.addPostFrameCallback((_) {
                        widget.scrollController.animateTo(
                          widget.scrollController.position.maxScrollExtent,
                          duration: const Duration(milliseconds: 200),
                          curve: Curves.easeOut,
                        );
                      });
                    },
                  ),
                  SizedBox(width: 23),
                  MyCustomButton(
                    char: '.',
                    width: 62,
                    hight: 62,
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                    forColor: AppColors.accent4,
                    backColor: AppColors.secondary,
                    onPressed: () {
                      widget.controller2.text += '.';
                      WidgetsBinding.instance.addPostFrameCallback((_) {
                        widget.scrollController.animateTo(
                          widget.scrollController.position.maxScrollExtent,
                          duration: const Duration(milliseconds: 200),
                          curve: Curves.easeOut,
                        );
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              MyCustomButton(
                char: '*',
                width: 62,
                hight: 62,
                fontSize: 32,
                fontWeight: FontWeight.w700,
                forColor: AppColors.accent3,
                backColor: AppColors.primary,
                onPressed: () {
                  widget.controller2.text += '*';
                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    widget.scrollController.animateTo(
                      widget.scrollController.position.maxScrollExtent,
                      duration: const Duration(milliseconds: 200),
                      curve: Curves.easeOut,
                    );
                  });
                },
              ),
              SizedBox(height: 24),
              MyCustomButton(
                char: '-',
                width: 62,
                hight: 60,
                fontSize: 32,
                fontWeight: FontWeight.w700,
                forColor: AppColors.accent3,
                backColor: AppColors.primary,
                onPressed: () {
                  widget.controller2.text += '-';
                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    widget.scrollController.animateTo(
                      widget.scrollController.position.maxScrollExtent,
                      duration: const Duration(milliseconds: 200),
                      curve: Curves.easeOut,
                    );
                  });
                },
              ),
              SizedBox(height: 22),
              MyCustomButton(
                char: '+',
                width: 62,
                hight: 96,
                fontSize: 32,
                fontWeight: FontWeight.w700,
                forColor: AppColors.accent3,
                backColor: AppColors.primary,
                onPressed: () {
                  widget.controller2.text += '+';
                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    widget.scrollController.animateTo(
                      widget.scrollController.position.maxScrollExtent,
                      duration: const Duration(milliseconds: 200),
                      curve: Curves.easeOut,
                    );
                  });
                },
              ),
              SizedBox(height: 26),
              MyCustomButton(
                char: '=',
                width: 62,
                hight: 96,
                fontSize: 32,
                fontWeight: FontWeight.bold,
                forColor: Colors.white,
                backColor: AppColors.primary2,
                onPressed: () {
                  try {
                    final myExpresion = widget.controller2.text;
                    widget.controller1.text = myExpresion;
                    var expressionGrammarDefinition = ExpressionGrammarParser(
                      {},
                    );
                    var parser = expressionGrammarDefinition.build();
                    var result = parser.parse(myExpresion);
                    var expression = result.value as Expression;
                    var value = expression.evaluate();
                    widget.controller2.text = value.toString();
                  } catch (e) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Center(child: Text('Invalid Expression')),
                      ),
                    );
                  }
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
