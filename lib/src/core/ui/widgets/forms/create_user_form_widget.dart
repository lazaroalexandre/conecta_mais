import 'package:conecta_mais/src/core/models/contato_model.dart';
import 'package:conecta_mais/src/core/ui/tokens/mask/mask_token.dart';
import 'package:conecta_mais/src/core/ui/widgets/button/cancel_button_widget.dart';
import 'package:conecta_mais/src/core/ui/widgets/button/confirm_button_widget.dart';
import 'package:conecta_mais/src/core/ui/widgets/forms/user_default_form_widget.dart';
import 'package:flutter/material.dart';

class CreateUserFormWidget extends StatefulWidget {
  const CreateUserFormWidget({super.key});

  @override
  State<CreateUserFormWidget> createState() => _CreteUserFormWidgetState();
}

class _CreteUserFormWidgetState extends State<CreateUserFormWidget> {
  final formKey = GlobalKey<FormState>();
  final nomeEC = TextEditingController();
  final numeroEC = TextEditingController();
  final emailEC = TextEditingController();

  @override
  void dispose() {
    nomeEC.dispose();
    numeroEC.dispose();
    emailEC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        UserDefaultFormWidget(
            formKey: formKey,
            nomeEC: nomeEC,
            numeroEC: numeroEC,
            emailEC: emailEC),
        Row(
          children: [
            const Expanded(
              child: CancelButtonWidget(),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: ConfirmButtonWidget(
                onPressed: () {
                  setState(() {
                    
                  });
                  final valid = formKey.currentState?.validate() ?? false;
                  if (valid) {
                    final contatoModel = ContatoModel(
                      nome: nomeEC.text,
                      numero: int.parse(
                        numeroEC.text.replaceAll(MaskToken.removeMask, ''),
                      ),
                      email: emailEC.text,
                    );
                    setState(() {
                      
                    });
                    Navigator.pop(context, contatoModel);
                  }
                },
                text: 'Salvar',
              ),
            ),
          ],
        ),
      ],
    );
  }
}
