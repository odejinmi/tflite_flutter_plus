// iOS metal delegate

import 'dart:ffi';

import '../dlib.dart';

import '../types.dart';

// iOS metal delegate bindings

/// Creates a new delegate instance that need to be destroyed with
/// `TFLDeleteTfLiteGpuDelegate` when delegate is no longer used by TFLite.
/// When `options` is set to `nullptr`, the following default values are used:
/// .precision_loss_allowed = false,
/// .wait_type = kPassive,
Pointer<TfLiteDelegate> Function(Pointer<TFLGpuDelegateOptions>? options)
    tflGpuDelegateCreate = tflitelib
        .lookup<NativeFunction<TFLGpuDelegateCreatenativet>>(
            'TFLGpuDelegateCreate')
        .asFunction();

typedef TFLGpuDelegateCreatenativet = Pointer<TfLiteDelegate> Function(
    Pointer<TFLGpuDelegateOptions>? options);

/// Destroys a delegate created with `TFLGpuDelegateCreate` call.
void Function(Pointer<TfLiteDelegate>) tflGpuDelegateDelete = tflitelib
    .lookup<NativeFunction<TFLGpuDelegateDeletenativet>>(
        'TFLGpuDelegateDelete')
    .asFunction();

typedef TFLGpuDelegateDeletenativet = Void Function(
    Pointer<TfLiteDelegate> delegate);

/// Default Options
TFLGpuDelegateOptions Function() tflGpuDelegateOptionsDefault = tflitelib
    .lookup<NativeFunction<TFLGpuDelegateOptionsnativet>>(
        'TFLGpuDelegateOptionsDefault')
    .asFunction();

typedef TFLGpuDelegateOptionsnativet = TFLGpuDelegateOptions Function();
