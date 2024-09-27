import 'dart:io';
import 'dart:core';
import 'dart:math';
import 'piramida.dart' as piramidaLib;
import 'sortir_piramida.dart' as sortirPiramidaLib;
import 'shuffle.dart';
import 'bubble_sort.dart';
import 'inversion.dart';

void main() {
  print("Masukkan angka: ");
  int? n = int.parse(stdin.readLineSync()!);

  List<int> numbers = List.generate(n, (_) => Random().nextInt(100));

  print("Angka yang di-generate: $numbers");

  print("Pilih metode: ");
  print("1. Bubble Sort");
  print("2. Inversi");
  print("3. Shuffle");
  print("4. Sortir Piramida");
  print("5. Piramida Acak");
  int? pilihan = int.parse(stdin.readLineSync()!);

  Stopwatch stopwatch = Stopwatch();
  stopwatch.start();

  if (pilihan >= 1 && pilihan <= 5) {
    performOperation(numbers, pilihan);
  } else {
    print("Pilihan tidak valid");
  }

  stopwatch.stop();

  // Print execution time after the result
  print("\nWaktu eksekusi: ${stopwatch.elapsedMicroseconds} microseconds");
}

void performOperation(List<int> numbers, int pilihan) {
  switch (pilihan) {
    case 1:
      print("Hasil Bubble Sort: ${bubbleSort(numbers)}");
      break;
    case 2:
      print("Jumlah Inversi: ${countInversions(numbers)}");
      break;
    case 3:
      print("Hasil Shuffle: ${shuffle(numbers)}");
      break;
    case 4:
      int height = (sqrt(numbers.length * 2)).floor(); // Calculate the height for the pyramid
      print("Hasil Sortir Piramida: ");
      sortirPiramidaLib.sortirPiramida(numbers, height); // Use the alias 'sortirPiramidaLib'
      break;
    case 5:
      int height = (sqrt(numbers.length * 2)).floor();
      print("Piramida Acak: ");
      piramidaLib.piramidaAcak(height); 
      break;
  }
}
