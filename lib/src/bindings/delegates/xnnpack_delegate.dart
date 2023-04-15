
import 'dart:ffi';

import '../dlib.dart';

import '../types.dart';

// XNNPack Delegate bindings

// Creates a new delegate instance that need to be destroyed with
// `TfLiteXNNPackDelegateDelete` when delegate is no longer used by TFLite.
// When `options` is set to `nullptr`, the following default values are used:
Pointer<TfLiteDelegate> Function(Pointer<TfLiteXNNPackDelegateOptions> options)
    tfliteXNNPackDelegateCreate = tflitelib
        .lookup<NativeFunction<TfLiteXNNPackDelegateCreatenativet>>(
            'TfLiteXNNPackDelegateCreate')
        .asFunction();

typedef TfLiteXNNPackDelegateCreatenativet = Pointer<TfLiteDelegate> Function(
    Pointer<TfLiteXNNPackDelegateOptions> options);

// Destroys a delegate created with `TfLiteXNNPackDelegateCreate` call.
void Function(Pointer<TfLiteDelegate>) tfliteXNNPackDelegateDelete = tflitelib
    .lookup<NativeFunction<TfLiteXNNPackDelegateDeletenativet>>(
        'TfLiteXNNPackDelegateDelete')
    .asFunction();

typedef TfLiteXNNPackDelegateDeletenativet = Void Function(
    Pointer<TfLiteDelegate> delegate);

/// Default Options
TfLiteXNNPackDelegateOptions Function() tfLiteXNNPackDelegateOptionsDefault = tflitelib
    .lookup<NativeFunction<TfLiteXNNPackDelegateOptionsnativet>>(
        'TfLiteXNNPackDelegateOptionsDefault')
    .asFunction();

typedef TfLiteXNNPackDelegateOptionsnativet = TfLiteXNNPackDelegateOptions Function();
