
# Search function

This package is a Dart package for implementing various search algorithms. It includes Linear Search, Binary Search, and Jump Search algorithms.

## Installation

```
dart pub add search_package
```
## Usage
```
import 'package:search_package/search_algorithms.dart';

void main() {
  final list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  final target = 5;

  final linearSearch = LinearSearch(list: list, target: target);
  final result = linearSearch.search();

  print('Index: ${result.index}, Time: ${result.timeMicroseconds} µs');
}
```
## Linear Search
```
import 'package:search_package/search_algorithms.dart';

void main() {
  final list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  final target = 5;

  final linearSearch = LinearSearch(list: list, target: target);
  final result = linearSearch.search();

  print('Index: ${result.index}, Time: ${result.timeMicroseconds} µs');
}
```

## Binary Search


```
import 'package:search_package/search_algorithms.dart';

void main() {
  final list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  final target = 5;

  final binarySearch = BinarySearch(list: list, target: target);
  final result = binarySearch.search();

  print('Index: ${result.index}, Time: ${result.timeMicroseconds} µs');
}
```

## Jump Search


```
import 'package:search_package/search_algorithms.dart';

void main() {
  final list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  final target = 5;

  final jumpSearch = JumpSearch(list: list, target: target);
  final result = jumpSearch.search();

  print('Index: ${result.index}, Time: ${result.timeMicroseconds} µs');
}
```
## Contributing
If you would like to contribute to this project, pull requests and issues are welcome. Please follow these steps:

Fork the project.
Create a new branch (git checkout -b my-new-feature).
Commit your changes (git commit -am 'Add some feature').
Push to the branch (git push origin my-new-feature).
Create a new Pull Request.
## License
This project is licensed under the MIT License - see the LICENSE.md file for details.

This `README.md` file provides detailed information on how to install, use, test, and contribute to your project.