import 'dart:math';

// Fungsi Shuffle
List<int> shuffle(List<int> list) {
  Random random = Random();
  int i = list.length;
  while (i > 1) {  // Ini adalah while tunggal
    i--;
    int j = random.nextInt(i + 1);
    int temp = list[i];
    list[i] = list[j];
    list[j] = temp;
  }
  return list;
}
