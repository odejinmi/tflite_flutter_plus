import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'dlib.dart';
import 'types.dart';

/// Returns the type of a tensor element.
TfLiteType tfLiteTensorType(Pointer<TfLiteTensor> t) =>
    TfLiteType.values[_tfLiteTensorType(t)];
int Function(Pointer<TfLiteTensor>) _tfLiteTensorType = tflitelib
    .lookup<NativeFunction<TfLiteTensorTypenativet>>('TfLiteTensorType')
    .asFunction();

typedef TfLiteTensorTypenativet = /*TfLiteType*/ Int32 Function(
    Pointer<TfLiteTensor>);

/// Returns the number of dimensions that the tensor has.
int Function(Pointer<TfLiteTensor>) tfLiteTensorNumDims = tflitelib
    .lookup<NativeFunction<TfLiteTensorNumDimsnativet>>(
        'TfLiteTensorNumDims')
    .asFunction();

typedef TfLiteTensorNumDimsnativet = Int32 Function(Pointer<TfLiteTensor>);

/// Returns the length of the tensor in the 'dim_index' dimension.
///
/// REQUIRES: 0 <= dim_index < TFLiteTensorNumDims(tensor)
int Function(Pointer<TfLiteTensor> tensor, int dimIndex) tfLiteTensorDim =
    tflitelib
        .lookup<NativeFunction<TfLiteTensorDimnativet>>('TfLiteTensorDim')
        .asFunction();

typedef TfLiteTensorDimnativet = Int32 Function(
    Pointer<TfLiteTensor> tensor, Int32 dimIndex);

/// Returns the size of the underlying data in bytes.
int Function(Pointer<TfLiteTensor>) tfLiteTensorByteSize = tflitelib
    .lookup<NativeFunction<TfLiteTensorByteSizenativet>>(
        'TfLiteTensorByteSize')
    .asFunction();

typedef TfLiteTensorByteSizenativet = Int32 Function(Pointer<TfLiteTensor>);

/// Returns a pointer to the underlying data buffer.
///
/// NOTE: The result may be null if tensors have not yet been allocated, e.g.,
/// if the Tensor has just been created or resized and `TfLiteAllocateTensors()`
/// has yet to be called, or if the output tensor is dynamically sized and the
/// interpreter hasn't been invoked.
Pointer<Void> Function(Pointer<TfLiteTensor>) tfLiteTensorData = tflitelib
    .lookup<NativeFunction<TfLiteTensorDatanativet>>('TfLiteTensorData')
    .asFunction();

typedef TfLiteTensorDatanativet = Pointer<Void> Function(
    Pointer<TfLiteTensor>);

/// Returns the (null-terminated) name of the tensor.
Pointer<Utf8> Function(Pointer<TfLiteTensor>) tfLiteTensorName = tflitelib
    .lookup<NativeFunction<TfLiteTensorNamenativet>>('TfLiteTensorName')
    .asFunction();

typedef TfLiteTensorNamenativet = Pointer<Utf8> Function(
    Pointer<TfLiteTensor>);

/// Copies from the provided input buffer into the tensor's buffer.
///
/// REQUIRES: input_data_size == TfLiteTensorByteSize(tensor)
/*TfLiteStatus*/
int Function(
  Pointer<TfLiteTensor> tensor,
  Pointer<Void> inputData,
  int inputDataSize,
) tfLiteTensorCopyFromBuffer = tflitelib
    .lookup<NativeFunction<TfLiteTensorCopyFromBuffernativet>>(
        'TfLiteTensorCopyFromBuffer')
    .asFunction();

typedef TfLiteTensorCopyFromBuffernativet = /*TfLiteStatus*/ Int32 Function(
  Pointer<TfLiteTensor> tensor,
  Pointer<Void> inputData,
  Int32 inputDataSize,
);

/// Copies to the provided output buffer from the tensor's buffer.
///
/// REQUIRES: output_data_size == TfLiteTensorByteSize(tensor)
/*TfLiteStatus*/
int Function(
  Pointer<TfLiteTensor> tensor,
  Pointer<Void> outputData,
  int outputDataSize,
) tfLiteTensorCopyToBuffer = tflitelib
    .lookup<NativeFunction<TfLiteTensorCopyToBuffernativet>>(
        'TfLiteTensorCopyToBuffer')
    .asFunction();

typedef TfLiteTensorCopyToBuffernativet = /*TfLiteStatus*/ Int32 Function(
  Pointer<TfLiteTensor> tensor,
  Pointer<Void> outputData,
  Int32 outputDataSize,
);

TfLiteQuantizationParams Function(Pointer<TfLiteTensor> tensor)
    tfLiteTensorQuantizationParams = tflitelib
        .lookup<NativeFunction<TfLiteTensorQuantizationParamsnativet>>(
            'TfLiteTensorQuantizationParams')
        .asFunction();

typedef TfLiteTensorQuantizationParamsnativet
    = TfLiteQuantizationParams Function(Pointer<TfLiteTensor> tensor);
