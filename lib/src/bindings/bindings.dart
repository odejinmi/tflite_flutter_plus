import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'dlib.dart';

/// Version information for the TensorFlowLite library.
final Pointer<Utf8> Function() tfLiteVersion = tflitelib
    .lookup<NativeFunction<TfLiteVersionnativet>>('TfLiteVersion')
    .asFunction();

typedef TfLiteVersionnativet = Pointer<Utf8> Function();
