// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
part 'textfield_input.freezed.dart';

enum ErrorType {
  empty,
  length,
  value,
  format,
  lowercaseLetter,
  uppercaseLetter,
  digitNumber,
  specialCharacter,
  none,
}

extension ErrorTypeExtension on ErrorType {
  String? get message {
    switch (this) {
      case ErrorType.empty:
        return 'Field cannot be empty';
      case ErrorType.length:
        return 'Must be at least 6 characters';
      case ErrorType.lowercaseLetter:
        return 'Must include a lowercase letter';
      case ErrorType.uppercaseLetter:
        return 'Must include an uppercase letter';
      case ErrorType.digitNumber:
        return 'Must include a number';
      case ErrorType.specialCharacter:
        return 'Must include a special character';
      case ErrorType.format:
        return 'Invalid format';
      case ErrorType.value:
        return 'Invalid value';
      case ErrorType.none:
        return '';
    }
  }
}

@freezed
abstract class TextFieldInput with _$TextFieldInput {
  const factory TextFieldInput({
    @Default('') String value,
    @Default(ErrorType.none) ErrorType errorType,
    @Default(null) String? error,
    @Default(true) bool obscureText,
  }) = _TextFieldInput;
}
