import 'package:conecta_mais/src/models/contato/model/contato_model.dart';
import 'package:conecta_mais/src/controllers/contato_controller.dart';
import 'package:conecta_mais/src/views/ui/mask/mask_token.dart';
import 'package:conecta_mais/src/views/ui/widgets/button/cancel_button_widget.dart';
import 'package:conecta_mais/src/views/ui/widgets/button/confirm_button_widget.dart';
import 'package:conecta_mais/src/views/ui/widgets/forms/user_default_form_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CreateUserFormWidget extends StatefulWidget {
  const CreateUserFormWidget({super.key});

  @override
  State<CreateUserFormWidget> createState() => _CreateUserFormWidgetState();
}

class _CreateUserFormWidgetState extends State<CreateUserFormWidget> {
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
          emailEC: emailEC,
        ),
        Row(
          children: [
            const Expanded(
              child: CancelButtonWidget(),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child:
                  Consumer<ContatoController>(builder: (context, value, child) {
                return ConfirmButtonWidget(
                  onPressed: () {
                    final valid = formKey.currentState?.validate() ?? false;
                    if (valid) {
                      final model = ContatoModel(
                        nome: nomeEC.text,
                        numero: int.parse(
                          numeroEC.text.replaceAll(MaskToken.removeMask, ''),
                        ),
                        email: emailEC.text,
                      );
                      value.save(model);
                      Navigator.pop(context);
                    }
                  },
                );
              }),
            ),
          ],
        ),
      ],
    );
  }
}
