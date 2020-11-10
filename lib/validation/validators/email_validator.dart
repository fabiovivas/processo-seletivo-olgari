import 'package:exercise/ui/pages/register/email_validation.dart';

class EmailValidator implements IEmailValidation {
  @override
  String validateEmail(String email) {
    final regex = RegExp(r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
    final isValid = email != null && email.isNotEmpty && regex.hasMatch(email);
    return isValid ? null : 'EMAIL INVÁLIDO. TENTE DE NOVO';
  }

}