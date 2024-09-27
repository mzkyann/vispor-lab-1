// Fungsi Bubble Sort
List<int> bubbleSort(List<int> list) {
  int n = list.length;
  bool swapped = true;
  while (swapped) {  // Ini adalah while tunggal
    swapped = false;
    int i = 1;
    list.asMap().forEach((index, value) {
      if (index < n - i && list[index] > list[index + 1]) {
        int temp = list[index];
        list[index] = list[index + 1];
        list[index + 1] = temp;
        swapped = true;
      }
    });
    i++;
  }
  return list;
}
