import 'dart:io';

void sortirPiramida(List<int> angkaList, int tinggi) {
  angkaList.sort(); // Sort the list of numbers
  int totalItems = angkaList.length;

  List<String> piramida = List.generate(tinggi, (i) {
    int startIdx = (i * (i + 1)) ~/ 2;
    int endIdx = ((i + 1) * (i + 2)) ~/ 2;

    // Ensure the endIdx doesn't exceed the total number of elements
    if (endIdx > totalItems) {
      endIdx = totalItems; 
    }

    // Generate the pyramid row
    String spasi = ' ' * (tinggi - (i + 1));
    String angka = angkaList.sublist(startIdx, endIdx).join(' ');
    return '$spasi$angka';
  });

  stdout.write(piramida.join('\n'));
}
