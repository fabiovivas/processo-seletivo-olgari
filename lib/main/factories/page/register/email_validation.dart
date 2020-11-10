import 'package:exercise/ui/pages/register/email_validation.dart';
import 'package:exercise/validation/validators/email_validator.dart';

IEmailValidation makeEmailValidation() {
  return EmailValidator();
}