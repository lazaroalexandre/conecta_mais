import 'package:conecta_mais/src/modules/home/widgets/inputs/form_input_widget.dart';
import 'package:flutter/material.dart';

class CreteUserFormWidget extends StatelessWidget {
  const CreteUserFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: Form(
          child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          FormInputWidget(
            text: "Nome",
            textInputAction: TextInputAction.next,
          ),
          SizedBox(
            height: 5,
          ),
          FormInputWidget(
              text: "Número", textInputAction: TextInputAction.next),
          SizedBox(
            height: 5,
          ),
          FormInputWidget(
              text: "E-mail", textInputAction: TextInputAction.done),
        ],
      )),
    );
  }
}
