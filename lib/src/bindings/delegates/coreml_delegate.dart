
import 'dart:ffi';

import '../dlib.dart';

import '../types.dart';

// CoreMl Delegate bindings

// Return a delegate that uses CoreML for ops execution.
// Must outlive the interpreter.
Pointer<TfLiteDelegate> Function(Pointer<TfLiteCoreMlDelegateOptions> options)
    tfliteCoreMlDelegateCreate = tflitelib
        .lookup<NativeFunction<TfLiteCoreMlDelegateCreatenativet>>(
            'TfLiteCoreMlDelegateCreate')
        .asFunction();

typedef TfLiteCoreMlDelegateCreatenativet = Pointer<TfLiteDelegate> Function(
    Pointer<TfLiteCoreMlDelegateOptions> options);

// Do any needed cleanup and delete 'delegate'.
void Function(Pointer<TfLiteDelegate>) tfliteCoreMlDelegateDelete = tflitelib
    .lookup<NativeFunction<TfLiteCoreMlDelegateDeletenativet>>(
        'TfLiteCoreMlDelegateDelete')
    .asFunction();

typedef TfLiteCoreMlDelegateDeletenativet = Void Function(
    Pointer<TfLiteDelegate> delegate);
