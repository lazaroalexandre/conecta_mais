// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:conecta_mais/src/core/ui/tokens/mask/mask_token.dart';
import 'package:conecta_mais/src/core/ui/widgets/inputs/form_input_widget.dart';
import 'package:flutter/material.dart';
import 'package:validatorless/validatorless.dart';

class UserDefaultFormWidget extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController nomeEC;
  final TextEditingController numeroEC;
  final TextEditingController emailEC;
  const UserDefaultFormWidget({
    super.key,
    required this.formKey,
    required this.nomeEC,
    required this.numeroEC,
    required this.emailEC,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Form(
          key: formKey,
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              FormInputWidget(
                controller: nomeEC,
                text: "Nome",
                textInputAction: TextInputAction.next,
                validator: Validatorless.required("Campo obrigatório!"),
              ),
              const SizedBox(
                height: 5,
              ),
              FormInputWidget(
                controller: numeroEC,
                text: "Número",
                inputFormatters: MaskToken.phoneInput,
                textInputAction: TextInputAction.next,
                validator: Validatorless.multiple([
                  Validatorless.required("Campo obrigatório!"),
                  Validatorless.min(15, "Digite no mínimo 11 números! "),
                  Validatorless.max(15, "Digite no máximo 11 números!"),
                ]),
              ),
              const SizedBox(
                height: 5,
              ),
              FormInputWidget(
                controller: emailEC,
                text: "E-mail",
                textInputAction: TextInputAction.done,
                validator: Validatorless.multiple([
                  Validatorless.email("E-mail inválido!"),
                ]),
              ),
            ],
          )),
    );
  }
}
