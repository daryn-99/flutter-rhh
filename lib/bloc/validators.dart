import 'dart:async';

class Validators {
  final validarNombre = StreamTransformer<String, String>.fromHandlers(
      handleData: (nombre, sink) {
    if (nombre == '') {
      sink.add(nombre);
    } else {
      //sink.addError('Por favor solo ingresar letras');
    }
  });

  final validarApellido = StreamTransformer<String, String>.fromHandlers(
      handleData: (apellido, sink) {
    if (apellido == '') {
      sink.add(apellido);
    } else {
      //sink.addError('Por favor solo ingresar letras');
    }
  });

  final validarDate =
      StreamTransformer<String, String>.fromHandlers(handleData: (date, sink) {
    if (date != null) {
      sink.add(date);
    } else {
      sink.addError('No puede ir vacio');
    }
  });

  final validarEmail =
      StreamTransformer<String, String>.fromHandlers(handleData: (email, sink) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = new RegExp(pattern);

    if (regExp.hasMatch(email)) {
      sink.add(email);
    } else {
      sink.addError('Email no es correcto');
    }
  });

  final validarPassword = StreamTransformer<String, String>.fromHandlers(
      handleData: (password, sink) {
    if (password.length >= 6) {
      sink.add(password);
    } else {
      sink.addError('Por favor ingrese más de seis caracteres por faavor');
    }
  });
}
