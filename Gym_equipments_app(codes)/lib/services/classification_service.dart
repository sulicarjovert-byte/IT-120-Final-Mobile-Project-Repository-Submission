import 'dart:typed_data';

import 'package:flutter/services.dart';
import 'package:image/image.dart' as img;
import 'package:tflite_flutter/tflite_flutter.dart';

class ClassificationResult {
  final String label;
  final double confidence;

  ClassificationResult({
    required this.label,
    required this.confidence,
  });
}

class ClassificationService {
  static final ClassificationService _instance = ClassificationService._internal();
  
  late List<String> _labels;
  bool _labelsLoaded = false;

  factory ClassificationService() {
    return _instance;
  }

  ClassificationService._internal();

  Future<void> initialize() async {
    if (_labelsLoaded) return;
    await _loadLabels();
  }

  Future<void> _loadLabels() async {
    final labelsData =
        await rootBundle.loadString('assets/labels.txt');
    _labels = labelsData
        .split('\n')
        .where((line) => line.isNotEmpty)
        .map((line) {
          final parts = line.split(' ');
          return parts.length > 1 ? parts.sublist(1).join(' ') : '';
        })
        .toList();
    _labelsLoaded = true;
  }

  Future<List<ClassificationResult>> classify(Uint8List imageBytes) async {
    if (!_labelsLoaded) {
      await initialize();
    }

    late Interpreter interpreter;
    try {
      interpreter = await Interpreter.fromAsset('assets/model_unquant.tflite');
    } catch (e) {
      throw Exception('Failed to load model: $e');
    }

    try {
      final image = img.decodeImage(imageBytes);
      if (image == null) {
        throw Exception('Failed to decode image');
      }

      final resized = img.copyResize(
        image,
        width: 224,
        height: 224,
      );

      final inputTensor = _buildInputTensor(resized);
      final output = [List<double>.filled(10, 0.0)];
      
      interpreter.run(inputTensor, output);

      final results = <ClassificationResult>[];
      final confidences = output[0];

      for (int i = 0; i < confidences.length && i < _labels.length; i++) {
        final confidence = confidences[i];
        results.add(
          ClassificationResult(
            label: _labels[i],
            confidence: confidence,
          ),
        );
      }

      results.sort((a, b) => b.confidence.compareTo(a.confidence));
      
      if (results.isNotEmpty && results[0].confidence < 0.4) {
        throw Exception('Low confidence prediction (${(results[0].confidence * 100).toStringAsFixed(1)}%). Image may not match any trained class.');
      }

      return results;
    } catch (e) {
      throw Exception('Classification failed: $e');
    } finally {
      interpreter.close();
    }
  }

  List<List<List<List<double>>>> _buildInputTensor(img.Image image) {
    return [
      [
        for (int y = 0; y < image.height; y++)
          [
            for (int x = 0; x < image.width; x++)
              _getPixelChannels(image, x, y),
          ],
      ],
    ];
  }

  List<double> _getPixelChannels(img.Image image, int x, int y) {
    final pixel = image.getPixelSafe(x, y);
    return [
      pixel.r.toDouble() / 255.0,
      pixel.g.toDouble() / 255.0,
      pixel.b.toDouble() / 255.0,
    ];
  }

}
