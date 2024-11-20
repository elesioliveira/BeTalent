String formatDate(DateTime date) {
  return '${date.day.toString().padLeft(2, '0')}/${date.month.toString().padLeft(2, '0')}/${date.year}';
}

String formatPhoneNumber(String phoneNumber) {
  // Remover qualquer caractere não numérico
  phoneNumber = phoneNumber.replaceAll(RegExp(r'[^0-9]'), '');

  // Verificar se a string tem o comprimento esperado (13 caracteres)
  if (phoneNumber.length == 13) {
    // Formatar o telefone no padrão desejado
    return '+${phoneNumber.substring(0, 2)} (${phoneNumber.substring(2, 4)}) ${phoneNumber.substring(4, 9)}-${phoneNumber.substring(9)}';
  } else {
    return 'Número inválido';
  }
}
