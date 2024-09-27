List<int> countInversions(List<int> list) {
  int left = 0;                
  int right = list.length - 1;

  while (left < right) { 
    int temp = list[left];
    list[left] = list[right];
    list[right] = temp;

    left++; 
    right--; 
  }

  return list; 
}