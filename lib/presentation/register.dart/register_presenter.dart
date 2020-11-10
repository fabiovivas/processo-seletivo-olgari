import 'package:exercise/ui/pages/register/email_validation.dart';
import 'package:mobx/mobx.dart';
part 'register_presenter.g.dart';

class RegisterPresenter = _RegisterPresenter with _$RegisterPresenter;

abstract class _RegisterPresenter with Store {
  final IEmailValidation emailValidation;
  _RegisterPresenter(this.emailValidation);
  
  @observable String email;  
  @observable String emailError;
  
  @action void setEmail(String email) {
    this.email = email;
    validateEmail();
  }

  @action void validateEmail() {
    emailError = emailValidation.validateEmail(email);
  }

}