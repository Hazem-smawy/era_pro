import 'dart:io';
import 'dart:typed_data';

import 'package:get/get_rx/src/rx_types/rx_types.dart';

Future<Uint8List?> fileToUint8List(File? image) async {
  if (image == null) return null;
  final bytes = await image.readAsBytes();

  return Uint8List.fromList(bytes);
}

Future<void> uint8ListToImageFile(
    Uint8List uint8List, String filePath, Rx<File?> image) async {
  final file = File(filePath);
  await file.writeAsBytes(uint8List);
  image.value = file;
}
