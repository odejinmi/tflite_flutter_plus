import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'dlib.dart';
import 'types.dart';

/// Returns a model from the provided buffer, or null on failure.
Pointer<TfLiteModel> Function(Pointer<Void> data, int size)
    tfLiteModelCreateFromBuffer = tflitelib
        .lookup<NativeFunction<TfLiteModelCreateFromBuffernativet>>(
            'TfLiteModelCreate')
        .asFunction();

typedef TfLiteModelCreateFromBuffernativet = Pointer<TfLiteModel> Function(
    Pointer<Void> data, Int32 size);

/// Returns a model from the provided file, or null on failure.
Pointer<TfLiteModel> Function(Pointer<Utf8> path) tfLiteModelCreateFromFile =
    tflitelib
        .lookup<NativeFunction<TfLiteModelCreateFromFilenativet>>(
            'TfLiteModelCreateFromFile')
        .asFunction();

typedef TfLiteModelCreateFromFilenativet = Pointer<TfLiteModel> Function(
    Pointer<Utf8> path);

/// Destroys the model instance.
void Function(Pointer<TfLiteModel>) tfLiteModelDelete = tflitelib
    .lookup<NativeFunction<TfLiteModelDeletenativet>>('TfLiteModelDelete')
    .asFunction();

typedef TfLiteModelDeletenativet = Void Function(Pointer<TfLiteModel>);
