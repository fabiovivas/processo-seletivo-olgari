import 'package:exercise/presentation/register/register_presenter.dart';
import 'package:exercise/ui/pages/register/email_validation.dart';
import 'package:exercise/validation/validators/email_validator.dart';

RegisterPresenter makeRegisterPresenter() {
  final IEmailValidation emailValidation = EmailValidator();
  return RegisterPresenter(emailValidation);
}