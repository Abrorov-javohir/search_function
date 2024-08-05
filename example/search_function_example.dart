import 'package:search_function/search_function.dart';

void main() {
  // Create a list to search
  List<int> list = List<int>.generate(1000, (i) => i);

  // Linear Search
  LinearSearch linearSearch = LinearSearch(list: list, target: 500);
  SearchResult linearResult = linearSearch.search();
  print(
      'Linear Search: Index: ${linearResult.index}, Time: ${linearResult.timeMicroseconds} µs');

  // Binary Search
  BinarySearch binarySearch = BinarySearch(list: list, target: 500);
  SearchResult binaryResult = binarySearch.search();
  print(
      'Binary Search: Index: ${binaryResult.index}, Time: ${binaryResult.timeMicroseconds} µs');

  // Jump Search
  JumpSearch jumpSearch = JumpSearch(list: list, target: 500);
  SearchResult jumpResult = jumpSearch.search();
  print(
      'Jump Search: Index: ${jumpResult.index}, Time: ${jumpResult.timeMicroseconds} µs');
}
