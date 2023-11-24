mixin InputValidationsMixin {

  String? isNotEmpty(String? value, [String? message]) {
    if (value!.isEmpty) return message ?? "Esse campo é obrigatório";
    return null;
  }
  
  String? hasMinChars(String? value, [String? message]) {
    if (value!.length < 2) return message ?? "Valor informado muito curto";
    return null;
  }

  String? isValidPassword(String? value, [String? message]) {
    final bool passwordValid = RegExp(r"^[a-zA-Z0-9]*$").hasMatch(value!);
    if (!passwordValid) return message ?? "A senha pode conter apenas letras e números";
    return null;
  }

  String? combine(List<String? Function()> validators) {
    for (final function in validators) {
      final validation = function();
      if (validation != null) return validation;
    }
    return null;
  }

}